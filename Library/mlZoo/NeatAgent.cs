using System.Collections.Generic;
using static MlEco.Library;
namespace MlEco
{
    public static partial class mlZoo
    {
        public class NeatAgent : Agent
        {
            public NeatAgent()
            {
            }

            public override double[] Activate(double[] inputs) { return new double[] { }; }
            internal override double[] GetOutputs() { return new double[] { }; }
            internal override Agent CrossOver(Agent _partner) { return new NeatAgent(); }

            //private static innovatioanindex;
            private List<ConnectionGene> Connections;
            private List<NodeGene> Nodes;

            private void AddConnectionMutation()
            {
                int nodeInIndex = RandomInt(Connections.Count);
                int nodeOutIndex = RandomInt(Connections.Count);
                while (nodeInIndex == nodeOutIndex)
                {
                    nodeOutIndex = RandomInt(Connections.Count);
                }
                NodeGene inNode = Nodes[nodeInIndex];
                NodeGene outNode = Nodes[nodeOutIndex];

                ConnectionGene newConnection = new ConnectionGene(inNode, outNode);
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
                    Weight = RandomDouble() * 2 - 1;
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
