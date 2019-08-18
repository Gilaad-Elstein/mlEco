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
                for (int i=0; i <NUM_OUTPUTS; i++)
                {
                    outputs[i] = Nodes[i + NUM_INPUTS].ActivateNode();
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
                        if (!(Connections[i].OutNode.Index == nodeIndex))
                        {
                            continue;
                        }
                        sum += ActivateNode(Connections[i].InNode.Index);
                    }
                    return sum;
                }

            }

            internal override double[] GetOutputs() { return new double[] { 0, 0, 0, 0, 0 }; }

            internal override Agent CrossOver(Agent _partner) { return new NeatAgent(); }

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
                do
                {
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

                Connections.Add(newConnection1);
                Connections.Add(newConnection2);
                Nodes.Add(newNode);
            }

            internal class ConnectionGene
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
