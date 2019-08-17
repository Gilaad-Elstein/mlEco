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
            private static readonly int NUM_INPUTS = 3;
            private static readonly int NUM_OUTPUTS = 5;


            private static List<(NodeGene, NodeGene)> GlobalInnovationDatabase = new List<(NodeGene, NodeGene)>();
            private List<ConnectionGene> Connections;
            private List<NodeGene> Nodes;
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

                for (int i=0; i < NUM_INPUTS; i++)
                {
                    Nodes[i].value = inputs[i];
                }

                for (int i = 0; i < Connections.Count; i++)
                {
                    if (!Connections[i].Expressed) { continue; }
                    //Connections[i].OutNode.value = 
                }

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
                        nodeOutIndex = RandomInt(Connections.Count);
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

            private class ConnectionGene
            {
                internal NodeGene InNode;
                internal NodeGene OutNode;
                internal double Weight;
                internal bool Expressed = true;
                private int InnovationNumber;

                internal ConnectionGene(NodeGene inNode, NodeGene outNode)
                {
                    this.InNode = inNode;
                    this.OutNode = outNode;
                    this.Weight = RandomDouble() * 2 - 1;
                    this.InnovationNumber = GetInnovationNumber(new ValueTuple<NodeGene, NodeGene>(InNode, OutNode));
                }

                internal void MutateWeight()
                {
                    Weight *= (RandomDouble() * 2 - 1) * MutationRate;
                }
            }

            private class NodeGene
            {
                private int Index;
                internal NodeType Type;
                internal double value;

                internal NodeGene(NodeType type, int index)
                {
                    this.Type = type;
                    this.Index = index;
                }

                internal enum NodeType { Sensor, Output, Hidden }
            }
        }
    }
}
