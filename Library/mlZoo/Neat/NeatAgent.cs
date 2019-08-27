using System;
using System.Collections.Generic;
using mlEco.Library.mlZoo.Neat;
using static MlEco.Library;
using static MlEco.mlZoo;

namespace MlEco
{
    [Serializable]
    public partial class NeatAgent : Agent
    {
        public static readonly int NUM_INPUTS = 2;
        public static readonly int NUM_OUTPUTS = 1;
        private static List<(int, int)> GlobalInnovationSet = new List<(int, int)>();

        internal static int GetInnovationNumber((NodeGene, NodeGene) nodes)
        {
            if (!ValidatNodePair(nodes)) { throw new ArgumentException("bad node pair"); }
            int innovationIndex = GlobalInnovationSet.IndexOf((nodes.Item1.Index, nodes.Item2.Index));
            if (innovationIndex >= 0)
            {
                return innovationIndex;
            }
            else
            {
                GlobalInnovationSet.Add((nodes.Item1.Index, nodes.Item2.Index));
                return GlobalInnovationSet.Count - 1;
            }
        }

        public static bool ValidatNodePair((NodeGene, NodeGene) nodes)
        {
            int index1 = nodes.Item1.Index;
            int index2 = nodes.Item2.Index;
            NodeGene.NodeType type1 = nodes.Item1.Type;
            NodeGene.NodeType type2 = nodes.Item2.Type;

            if ( type2 == NodeGene.NodeType.Input ||
                 type1 == NodeGene.NodeType.Output)
            {
                return false;
            }

            if ( type1 == NodeGene.NodeType.Hidden &&
                 type2 == NodeGene.NodeType.Hidden &&
                 index1 >= index2)
            {
                return false;
            }

            return true;
        }

        internal List<ConnectionGene> Connections = new List<ConnectionGene>();
        internal List<NodeGene> Nodes = new List<NodeGene>();
        private List<int> LocalInnovationSet = new List<int>();

        public NeatAgent()
        {
            for (int i = 0; i < NUM_INPUTS; i++)
            {
                Nodes.Add(new NodeGene(NodeGene.NodeType.Input, Nodes.Count));
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
            if (Nodes[nodeIndex].Type == NodeGene.NodeType.Input)
            {
                return Nodes[nodeIndex].value;
            }
            else
            {
                double sum = 0;
                for (int i=0; i < Connections.Count; i++)
                {
                    if (!(Connections[i].OutNode.Index == nodeIndex) ||
                        !(Connections[i].Expressed) ||
                        Connections[i].InNode.Index == Connections[i].OutNode.Index)
                    {
                        continue;
                    }
                    Here(string.Format("agent {0} is activating node {1} to node {2}", this.GetHashCode(), Connections[i].InNode.Index, Connections[i].OutNode.Index));
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
    }
}
