using System;
using System.Collections.Generic;
using mlEco.Library.mlZoo.Neat;
using static MlEco.Library;
using static MlEco.mlZoo;

namespace MlEco
{
    public partial class NeatAgent : Agent
    {

        internal override Agent CrossOver(Agent _partner)
        {
            NeatAgent offspring = new NeatAgent();
            NeatAgent partner = (NeatAgent)_partner;
            NeatAgent fittestAgent;
            NeatAgent lessFitAgent;

            fittestAgent = this.fitness > partner.fitness ? this : partner;
            lessFitAgent = this.fitness >= partner.fitness ? partner : this;

            fittestAgent.Connections.Sort();
            lessFitAgent.Connections.Sort();

            int maxInnovationNum = Math.Max(fittestAgent.GetMaxInnovationNum(), lessFitAgent.GetMaxInnovationNum());
            if (maxInnovationNum != -1)
            {
                int innovationIndex = 0;
                do
                {
                    while (!(fittestAgent.LocalInnovationSet.Contains(innovationIndex)) &&
                           !(lessFitAgent.LocalInnovationSet.Contains(innovationIndex)))
                    {
                        innovationIndex++;
                        continue;
                    }

                    if (fittestAgent.LocalInnovationSet.Contains(innovationIndex) &&
                        !(lessFitAgent.LocalInnovationSet.Contains(innovationIndex)))
                    {
                        offspring.AddConnection(fittestAgent.GetConnectionByIN(innovationIndex));
                    }
                    else if (fittestAgent.LocalInnovationSet.Contains(innovationIndex) &&
                            lessFitAgent.LocalInnovationSet.Contains(innovationIndex))
                    {
                        if (fittestAgent.fitness / (fittestAgent.fitness + lessFitAgent.fitness) < RandomDouble())
                        {
                            offspring.AddConnection(fittestAgent.GetConnectionByIN(innovationIndex));
                        }
                        else
                        {
                            offspring.AddConnection(lessFitAgent.GetConnectionByIN(innovationIndex));
                        }
                    }
                    //disjoint or excess lessFitAgent gene, ignore
                    else
                    {
                        innovationIndex++;
                        continue;
                    }

                    offspring.AddNodesFromConnectionIN(innovationIndex);

                    innovationIndex++;
                }
                while (innovationIndex < maxInnovationNum);
            }

            offspring.Mutate();
            return offspring;
        }

        private void Mutate()
        {
            if (RandomDouble() < 1)
            {
                ForceMutate();
            }
        }

        private void AddNodesFromConnectionIN(int innovationIndex)
        {
            ConnectionGene connection = GetConnectionByIN(innovationIndex);
            bool foundIn = false;
            bool foundOut = false;

            foundIn |= connection.InNode.Type == NodeGene.NodeType.Input;
            foundOut |= connection.OutNode.Type == NodeGene.NodeType.Output;

            for (int i = 0; i < Nodes.Count; i++)
            {
                foundIn |= Nodes[i].Index == connection.InNode.Index;
                foundOut |= Nodes[i].Index == connection.OutNode.Index;
            }

            if (!foundIn)
            {
                Nodes.Add(new NodeGene(connection.InNode.Type,
                    connection.InNode.Index,
                    connection.InNode.DrawPosition));
            }

            if (!foundOut)
            {
                Nodes.Add(new NodeGene(connection.OutNode.Type,
                    connection.OutNode.Index,
                    connection.OutNode.DrawPosition));
            }
        }

        private ConnectionGene GetConnectionByIN(int innovationIndex)
        {
            for (int i = 0; i < Connections.Count; i++)
            {
                if (Connections[i].InnovationNumber == innovationIndex)
                {
                    return Connections[i];
                }
            }
            throw new KeyNotFoundException("GetConnectionByIN recived unavailable IN");
        }


        internal void ForceMutate(int type = 0)
        {
            if (type == 0)
            {
                type = RandomInt(5) + 1;
            }
            switch (type)
            {
                case 1:
                    AddConnectionMutation();
                    break;
                case 2:
                    AddNodeMutation();
                    break;
                case 3:
                    ShiftWeightMutation();
                    break;
                case 4:
                    RandomWeightMutation();
                    break;
                case 5:
                    ExpressedMutation();
                    break;
            }

        }

        private void AddConnectionMutation()
        {
            int nodeInIndex;
            int nodeOutIndex;
            int attempts = 0;
            do
            {
                attempts++;
                if (attempts > 100)
                {
                    Console.WriteLine("Failed to add connection mutation.");
                    return;
                }
                do
                {
                    nodeInIndex = RandomInt(Nodes.Count);
                    nodeOutIndex = RandomInt(Nodes.Count);
                }
                while (!ValidatNodePair(nodeInIndex, nodeOutIndex));

            } while (LocalInnovationSet.Contains(GetInnovationNumber((Nodes[nodeInIndex], Nodes[nodeOutIndex]))));
            ConnectionGene newConnection = new ConnectionGene(Nodes[nodeInIndex], Nodes[nodeOutIndex]);

            AddConnection(newConnection);
        }

        private void ExpressedMutation()
        {
            if (Connections.Count == 0) { return; }

            Connections[RandomInt(Connections.Count)].MutateExpressed();
        }

        private void RandomWeightMutation()
        {
            if (Connections.Count == 0) { return; }

            Connections[RandomInt(Connections.Count)].MutateWeightRandom();
        }

        private void ShiftWeightMutation()
        {
            if (Connections.Count == 0) { return; }

            Connections[RandomInt(Connections.Count)].MutateWeightShift();
        }

        private void AddConnection(ConnectionGene newConnection)
        {
            Connections.Add(newConnection);
            if (!LocalInnovationSet.Contains(newConnection.InnovationNumber))
            {
                LocalInnovationSet.Add(newConnection.InnovationNumber);
            }
        }

        private void AddNodeMutation()
        {
            if (Connections.Count == 0) { return; }
            ConnectionGene connection;
            int attempts = 0;
            do
            {
                attempts++;
                if (attempts > 100) { return; }
                connection = Connections[RandomInt(Connections.Count)];
            }
            while (connection.Expressed == false);

            connection.Expressed = false;
            NodeGene newNode = new NodeGene(NodeGene.NodeType.Hidden,
                                            GetMaxNodeIndex() + 1,
                                            new Position(
                                                (connection.InNode.DrawPosition.x + connection.OutNode.DrawPosition.x) / 2,
                                                (connection.InNode.DrawPosition.y + connection.OutNode.DrawPosition.y) / 2));

            if(!ValidatNodePair((connection.InNode, newNode)))
            {
                throw new ArgumentException(string.Format(
                                    "AddNodeMutation tried to add bad node pair {0}, {1}", connection.InNode.Index, newNode.Index));
            }
            if (!ValidatNodePair((newNode, connection.OutNode)))
            {
                throw new ArgumentException(string.Format(
                                    "AddNodeMutation tried to add bad node pair {0}, {1}", newNode.Index, connection.OutNode.Index));
            }

            ConnectionGene newConnection1 = new ConnectionGene(connection.InNode, newNode);
            ConnectionGene newConnection2 = new ConnectionGene(newNode, connection.OutNode);
            newConnection1.Weight = 1;
            newConnection2.Weight = connection.Weight;

            AddConnection(newConnection1);
            AddConnection(newConnection2);
            Nodes.Add(newNode);
        }
    }
}
