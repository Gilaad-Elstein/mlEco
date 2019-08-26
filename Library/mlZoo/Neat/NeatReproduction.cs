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

            if (this.fitness > partner.fitness)
            {
                fittestAgent = this;
                lessFitAgent = partner;
            }
            else
            {
                fittestAgent = partner;
                lessFitAgent = this;
            }

            fittestAgent.Connections.Sort();
            lessFitAgent.Connections.Sort();

            int maxInnovationNum;

            if (fittestAgent.Connections.Count == 0 && lessFitAgent.Connections.Count == 0)
            {
                offspring = fittestAgent;
                offspring.Mutate();
                return offspring;
            }

            else if (fittestAgent.Connections.Count == 0 && lessFitAgent.Connections.Count != 0)
            {
                maxInnovationNum = lessFitAgent.Connections[lessFitAgent.Connections.Count - 1].InnovationNumber;
            }

            else if (fittestAgent.Connections.Count != 0 && lessFitAgent.Connections.Count == 0)
            {
                maxInnovationNum = fittestAgent.Connections[fittestAgent.Connections.Count - 1].InnovationNumber;
            }

            else
            {
                maxInnovationNum = Math.Max(fittestAgent.Connections[fittestAgent.Connections.Count - 1].InnovationNumber,
                                            lessFitAgent.Connections[lessFitAgent.Connections.Count - 1].InnovationNumber);
            }

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

            if (connection.InNode.Type == NodeGene.NodeType.Sensor) { foundIn = true; }
            if (connection.OutNode.Type == NodeGene.NodeType.Output) { foundOut = true; }

            for (int i = 0; i < Nodes.Count; i++)
            {
                if (Nodes[i].Index == connection.InNode.Index)
                {
                    foundIn = true;
                }
                if (Nodes[i].Index == connection.OutNode.Index)
                {
                    foundOut = true;
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
                while ((nodeInIndex > nodeOutIndex && Nodes[nodeOutIndex].Type != NodeGene.NodeType.Output) ||
                       nodeInIndex == nodeOutIndex ||
                       Nodes[nodeInIndex].Type == NodeGene.NodeType.Output ||
                       Nodes[nodeOutIndex].Type == NodeGene.NodeType.Sensor);

            } while (LocalInnovationSet.Contains(GetInnovationNumber((Nodes[nodeInIndex], Nodes[nodeOutIndex]))));
            ConnectionGene newConnection = new ConnectionGene(Nodes[nodeInIndex], Nodes[nodeOutIndex]);
            if (newConnection.InNode.Index == newConnection.OutNode.Index ||
                newConnection.InNode.Index > newConnection.OutNode.Index && !(Nodes[nodeOutIndex].Type == NodeGene.NodeType.Output))
            {
                throw new Exception("inside connection");
            }
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
            LocalInnovationSet.Add(newConnection.InnovationNumber);
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
                                            Nodes.Count,
                                            new Position(
                                                (connection.InNode.DrawPosition.x + connection.OutNode.DrawPosition.x) / 2,
                                                (connection.InNode.DrawPosition.y + connection.OutNode.DrawPosition.y) / 2));
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
