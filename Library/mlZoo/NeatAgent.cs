using System;
using System.Collections.Generic;
using static MlEco.Library;

namespace MlEco
{
    public static partial class mlZoo
    {
        public static void NEATMain()
        {
            NeatAgent agent = new NeatAgent();
            NeatAgent.ConnectionGene connection = new NeatAgent.ConnectionGene(
                                                                        agent.Nodes[0],
                                                                        agent.Nodes[4]);
            agent.Connections.Add(connection);

            Gtk.Application.Init();
            new TopographyViewerApp(agent);
            Gtk.Application.Run();
            return;
        }

        [Serializable]
        public class NeatAgent : Agent
        {
            public static readonly int NUM_INPUTS = 3;
            public static readonly int NUM_OUTPUTS = 5;


            private static List<(NodeGene, NodeGene)> GlobalInnovationDatabase = new List<(NodeGene, NodeGene)>();
            internal List<ConnectionGene> Connections = new List<ConnectionGene>();
            internal List<NodeGene> Nodes = new List<NodeGene>();
            private List<int> LocalInnovationDatabase = new List<int>();

            private static int GetInnovationNumber((NodeGene, NodeGene) nodes)
            {
                int innovationIndex = GlobalInnovationDatabase.IndexOf(nodes);
                if (innovationIndex >= 0)
                {
                    return innovationIndex;
                }
                else
                {
                    GlobalInnovationDatabase.Add(nodes);
                    return GlobalInnovationDatabase.Count - 1;
                }
            }

            public NeatAgent()
            {
                for (int i=0; i < NUM_INPUTS; i++)
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
                foreach(NodeGene node in Nodes ) { node.value = 0; }
                double[] outputs = new double[NUM_OUTPUTS];

                return outputs;
            }

            internal override double[] GetOutputs() { return new double[] { 0, 0, 0, 0, 0}; }
            internal override Agent CrossOver(Agent _partner) { return new NeatAgent(); }



            private void AddConnectionMutation()
            {
                int nodeInIndex;
                int nodeOutIndex;
                do
                {
                    nodeInIndex = RandomInt(Nodes.Count - NUM_OUTPUTS);
                    nodeOutIndex = RandomInt(Nodes.Count - NUM_INPUTS) + NUM_INPUTS;

                    while (nodeInIndex == nodeOutIndex)
                    {
                        nodeOutIndex = RandomInt(Nodes.Count - NUM_INPUTS) + NUM_INPUTS;
                    }

                } while (LocalInnovationDatabase.Contains(GetInnovationNumber((Nodes[nodeInIndex], Nodes[nodeOutIndex]))));
                ConnectionGene newConnection = new ConnectionGene(Nodes[nodeInIndex], Nodes[nodeOutIndex]);
                Connections.Add(newConnection);
            }

            private void AddNodeMutation()
            {
                if (Connections.Count == 0) { return; }

                ConnectionGene connection = Connections[RandomInt(Connections.Count)];
                connection.Expressed = false;

                NodeGene newNode = new NodeGene(NodeGene.NodeType.Hidden, Nodes.Count);
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
                private readonly int InnovationNumber;

                internal ConnectionGene(NodeGene inNode, NodeGene outNode)
                {
                    this.InNode = inNode;
                    this.OutNode = outNode;
                    this.Weight = RandomDouble() * 2 - 1;
                    this.InnovationNumber = GetInnovationNumber(new ValueTuple<NodeGene, NodeGene>(InNode, OutNode));
                }

                internal void MutateWeightShift()
                {
                    Weight *= (RandomDouble() * 2 - 1) * MutationRate;
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
                private readonly int Index;
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
