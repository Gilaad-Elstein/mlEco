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
        public static int NUM_INPUTS = 2;
        public static int NUM_OUTPUTS = 1;
        private static List<(int, int)> GlobalInnovationSet = new List<(int, int)>();

        internal static int GetInnovationNumber((NodeGene, NodeGene) nodes)
        {
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

        internal static void ClearGlobalInnovationSet()
        {
            GlobalInnovationSet.Clear();
        }

        int numInputs;
        int numOutputs;
        internal List<ConnectionGene> Connections = new List<ConnectionGene>();
        internal List<NodeGene> Nodes = new List<NodeGene>();
        private List<int> LocalInnovationSet = new List<int>();

        public NeatAgent(int? _numInputs = null, int? _numOutputs = null)
        {
            numInputs = _numInputs is null ? NUM_INPUTS : (int)_numInputs;
            numOutputs = _numOutputs is null ? NUM_OUTPUTS : (int)_numOutputs;


            for (int i = 0; i < numInputs; i++)
            {
                Nodes.Add(new NodeGene(NodeGene.NodeType.Input, Nodes.Count));
            }
            for (int i = 0; i < numOutputs; i++)
            {
                Nodes.Add(new NodeGene(NodeGene.NodeType.Output, Nodes.Count));
            }
        }

        public bool ValidatNodePair((NodeGene, NodeGene) nodes)
        {
            int index1 = nodes.Item1.Index;
            int index2 = nodes.Item2.Index;
            return ValidatNodePair(index1, index2);
        }

        public bool ValidatNodePair(int index1, int index2)
        {
            NodeGene.NodeType type1;
            NodeGene.NodeType type2;

            if (index1 < NUM_INPUTS) { type1 = NodeGene.NodeType.Input; }
            else if (index1 < NUM_INPUTS + NUM_OUTPUTS) { type1 = NodeGene.NodeType.Output; }
            else { type1 = NodeGene.NodeType.Hidden; }

            if (index2 < NUM_INPUTS) { type2 = NodeGene.NodeType.Input; }
            else if (index2 < NUM_INPUTS + NUM_OUTPUTS) { type2 = NodeGene.NodeType.Output; }
            else { type2 = NodeGene.NodeType.Hidden; }

            if (type2 == NodeGene.NodeType.Input ||
                type1 == NodeGene.NodeType.Output) { return false; }

            if (type1 == NodeGene.NodeType.Hidden &&
                type2 == NodeGene.NodeType.Hidden) { return CheckNodesForLoop(index1, index2); }

            return true;
        }

        private bool CheckNodesForLoop(int index1, int index2)
        {
            ConnectionGene testedConnection = new ConnectionGene(Nodes[index1], Nodes[index2]);
            Connections.Add(testedConnection);
            for (int i = 0; i < numInputs; i++)
            {

            }
            Connections.Remove(testedConnection);
            throw new NotImplementedException();
        }

        internal override double[] Activate(double[] inputs)
        {
            double[] outputs = new double[numOutputs];

            for (int i=0; i < numInputs; i++)
            {
                Nodes[i].value = inputs[i];
            }
            for (int i=0; i < numOutputs; i++)
            {
                outputs[i] = ActivateNode(i + numInputs);
                Nodes[i + numInputs].value = outputs[i];
            }

            return outputs;
        }

        private double ActivateNode(int nodeIndex)
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
                    sum += Connections[i].Weight * ActivateNode(Connections[i].InNode.Index);
                }
                Nodes[nodeIndex].value = sum;
                return Sigmoid(sum);
            }

        }

        internal override double[] GetOutputs() 
        {
            double[] outputs = new double[numOutputs];
            for (int i=0; i < numOutputs; i++)
            {
                outputs[i] = Nodes[i + numInputs].value;
            }
            return outputs;
        }

        internal double[] ActivateWithRandomInputs()
        {
            double[] inputs = new double[numInputs];
            for (int i=0; i < numInputs; i++)
            {
                inputs[i] = RandomDouble() * 2 - 1;
            }
            return Activate(inputs);
        }

        internal int GetMaxInnovationNum()
        {
            if (LocalInnovationSet.Count > 0)
            {
                return LocalInnovationSet[LocalInnovationSet.Count - 1];
            }
            return -1;
        }

        public int GetMaxNodeIndex()
        {
            int maxNodeIndex = 0;
            foreach (NodeGene node in Nodes)
            {
                if (maxNodeIndex < node.Index)
                {
                    maxNodeIndex = node.Index;
                }
            }
            return maxNodeIndex;
        }
    }
}
