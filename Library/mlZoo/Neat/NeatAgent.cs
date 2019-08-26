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
        private static List<(NodeGene, NodeGene)> GlobalInnovationSet = new List<(NodeGene, NodeGene)>();

        internal static int GetInnovationNumber((NodeGene, NodeGene) nodes)
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
