using System;
using System.Collections.Generic;
using static MlEco.Library;

namespace MlEco
{
    public static partial class mlZoo
    {
        [Serializable]
        public class NeatAgent : Agent
        {
            public static readonly int NUM_INPUTS = 3;
            public static readonly int NUM_OUTPUTS = 5;
            private static List<(NodeGene, NodeGene)> GlobalInnovationSet = new List<(NodeGene, NodeGene)>();

            internal List<ConnectionGene> Connections = new List<ConnectionGene>();
            internal List<NodeGene> Nodes = new List<NodeGene>();
            private List<int> LocalInnovationSet = new List<int>();

            public NeatAgent()
            {
                for (int i = 0; i < NUM_INPUTS; i++)
                {
                    Nodes.Add(new NodeGene(NodeGene.NodeType.Sensor, Nodes.Count));
                }
                for (int i = 0; i < NUM_OUTPUTS; i++)
                {
                    Nodes.Add(new NodeGene(NodeGene.NodeType.Output, Nodes.Count));
                }
            }

            internal override double[] Activate(double[] inputs)
            {
                double[] outputs = new double[NUM_OUTPUTS];

                for (int i=0; i < NUM_INPUTS; i++)
                {
                    Nodes[i].value = inputs[i];
                }
                for (int i=0; i < NUM_OUTPUTS; i++)
                {
                    outputs[i] = ActivateNode(i + NUM_INPUTS);
                    Nodes[i + NUM_INPUTS].value = outputs[i];
                }

                return outputs;
            }

            internal double ActivateNode(int nodeIndex)
            {
                if (Nodes[nodeIndex].Type == NodeGene.NodeType.Sensor)
                {
                    return Nodes[nodeIndex].value;
                }
                else
                {
                    double sum = 0;
                    for (int i=0; i < Connections.Count; i++)
                    {
                        if (!(Connections[i].OutNode.Index == nodeIndex) ||
                            !(Connections[i].Expressed))
                        {
                            continue;
                        }
                        sum += Connections[i].Weight * ActivateNode(Connections[i].InNode.Index);
                    }
                    Nodes[nodeIndex].value = sum;
                    return sum;
                }

            }

            internal override double[] GetOutputs() 
            {
                double[] outputs = new double[NUM_OUTPUTS];
                for (int i=0; i < NUM_OUTPUTS; i++)
                {
                    outputs[i] = Nodes[i + NUM_INPUTS].value;
                }
                return outputs;
            }

            internal double[] ActivateWithRandomInputs()
            {
                double[] inputs = new double[NUM_INPUTS];
                for (int i=0; i < NUM_INPUTS; i++)
                {
                    inputs[i] = RandomDouble() * 2 - 1;
                }
                return Activate(inputs);
            }

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
                    return new NeatAgent();
                }

                else if (fittestAgent.Connections.Count == 0 && lessFitAgent.Connections.Count != 0)
                {
                    maxInnovationNum = lessFitAgent.Connections[Connections.Count - 1].InnovationNumber;
                }

                else if (fittestAgent.Connections.Count != 0 && lessFitAgent.Connections.Count == 0)
                {
                    maxInnovationNum = fittestAgent.Connections[Connections.Count - 1].InnovationNumber;
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
                        if (fittestAgent.fitness/(fittestAgent.fitness + lessFitAgent.fitness) < RandomDouble())
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

                return offspring;
            }

            private void AddNodesFromConnectionIN(int innovationIndex)
            {
                ConnectionGene connection = GetConnectionByIN(innovationIndex);
                bool foundIn = false;
                bool foundOut = false;

                if (connection.InNode.Type == NodeGene.NodeType.Sensor) { foundIn = true; }
                if (connection.OutNode.Type == NodeGene.NodeType.Output) { foundOut = true; }

                for (int i=0; i < Nodes.Count; i++)
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
                for (int i=0; i < Connections.Count; i++)
                {
                    if( Connections[i].InnovationNumber == innovationIndex)
                    {
                        return Connections[i];
                    }
                }
                throw new KeyNotFoundException("GetConnectionByIN recived unavailable IN");
            }

            private static int GetInnovationNumber((NodeGene, NodeGene) nodes)
            {
                int innovationIndex = GlobalInnovationSet.IndexOf(nodes);
                if (innovationIndex >= 0)
                {
                    return innovationIndex;
                }
                else
                {
                    GlobalInnovationSet.Add(nodes);
                    return GlobalInnovationSet.Count - 1;
                }
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
                    while (nodeInIndex >= nodeOutIndex ||
                           Nodes[nodeInIndex].Type == NodeGene.NodeType.Output ||
                           Nodes[nodeOutIndex].Type == NodeGene.NodeType.Sensor);

                } while (LocalInnovationSet.Contains(GetInnovationNumber((Nodes[nodeInIndex], Nodes[nodeOutIndex]))));
                ConnectionGene newConnection = new ConnectionGene(Nodes[nodeInIndex], Nodes[nodeOutIndex]);
                AddConnection(newConnection);
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
                                                    (connection.InNode.DrawPosition.x + connection.OutNode.DrawPosition.x)/2,
                                                    (connection.InNode.DrawPosition.y + connection.OutNode.DrawPosition.y) / 2));
                ConnectionGene newConnection1 = new ConnectionGene(connection.InNode, newNode);
                ConnectionGene newConnection2 = new ConnectionGene(newNode, connection.OutNode);
                newConnection1.Weight = 1;
                newConnection2.Weight = connection.Weight;

                AddConnection(newConnection1);
                AddConnection(newConnection2);
                Nodes.Add(newNode);
            }

            internal class ConnectionGene : IComparable
            {
                internal NodeGene InNode;
                internal NodeGene OutNode;
                internal double Weight;
                internal bool Expressed = true;
                internal readonly int InnovationNumber;
                internal readonly double[] DrawColor;

                internal ConnectionGene(NodeGene inNode, NodeGene outNode)
                {
                    this.InNode = inNode;
                    this.OutNode = outNode;
                    this.Weight = RandomDouble() * 2 - 1;
                    this.InnovationNumber = GetInnovationNumber(new ValueTuple<NodeGene, NodeGene>(InNode, OutNode));
                    this.DrawColor = new double[] { RandomDouble(), RandomDouble(), RandomDouble() };
                }

                internal void MutateWeightShift()
                {
                    Weight += (RandomDouble() * 2 - 1) * MutationRate;
                }

                internal void MutateWeightRandom()
                {
                    Weight = RandomDouble() * 2 - 1;
                }

                internal void MutateExpressed()
                {
                    Expressed = !Expressed;
                }

                public int CompareTo(object obj)
                {
                    if (!(obj is ConnectionGene))
                    {
                        throw new InvalidOperationException("Compared ConnectionGene to something that isn't.");
                    }
                    return this.InnovationNumber.CompareTo(((ConnectionGene)obj).InnovationNumber);
                }
            }

            internal class NodeGene
            {
                internal readonly int Index;
                internal NodeType Type;
                internal double value;
                internal Position DrawPosition;

                internal NodeGene(NodeType type, int index)
                {
                    if (type == NodeType.Hidden)
                    {
                        throw new ArgumentException("Cannot construct hidden node without DrawPosistion");
                    }

                    this.Type = type;
                    this.Index = index;
                    if (Type == NodeType.Sensor)
                    {
                        DrawPosition = new Position(0.1, (double)(index + 0.5) / NUM_INPUTS);
                    }
                    else if (Type == NodeType.Output)
                    {
                        DrawPosition = new Position(0.9, (double)(index + 0.5 - NUM_INPUTS) / NUM_OUTPUTS);
                    }
                }

                internal NodeGene(NodeType type, int index, Position position)
                {
                    if (type != NodeType.Hidden)
                    {
                        throw new ArgumentException("Cannot specify position for none hidden node");
                    }

                    this.Type = type;
                    this.Index = index;
                    this.DrawPosition = position;
                }

                internal void SetPosition(Position position)
                {
                    DrawPosition = position;
                }

                internal enum NodeType { Sensor, Output, Hidden }
            }
        }
    }
}
