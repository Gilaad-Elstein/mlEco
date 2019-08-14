using System;
using static MlEco.Library;

namespace MlEco
{
    public static partial class mlZoo
    {
        [Serializable]
        public class FCAgent : Agent
        {

            private Layer[] layers;
            private int[] topology;

            //Parameterless constructor for deserializing
            private FCAgent()
            {

            }

            public FCAgent(FCAgent n)
            {
                topology = n.topology;
                layers = new Layer[topology.Length];
                for (int i = 0; i < topology.Length; i++)
                {
                    layers[i] = new Layer(topology, i, n.layers[i]);
                }
            }

            public FCAgent(int[] _topology)
            {
                topology = _topology;
                layers = new Layer[topology.Length];
                for (int i = 0; i < topology.Length; i++)
                    layers[i] = new Layer(topology, i);
            }

            public override double[] Activate(double[] inputs)
            {
                layers[0].Activate(inputs);
                for (int i = 1; i < topology.Length; i++)
                    layers[i].Activate(layers[i - 1].GetOutputs());
                return layers[layers.Length - 1].GetOutputs();
            }

            internal override double[] GetOutputs()
            {
                return layers[layers.Length - 1].GetOutputs();
            }

            internal override Agent CrossOver(Agent _partner)
            {
                FCAgent partner = (FCAgent)_partner;
                FCAgent child = new FCAgent(topology);
                for (int i = 1; i < topology.Length; i++)
                {
                    for (int j = 0; j < topology[i]; j++)
                    {
                        for (int k = 0; k < this.layers[i].Nodes[j].weights.Length; k++)
                        {
                            child.layers[i].Nodes[j].weights[k] = RandomDouble() < 0.5 ?
                                this.layers[i].Nodes[j].weights[k] : partner.layers[i].Nodes[j].weights[k];
                            if (RandomDouble() < mutationRate)
                                child.layers[i].Nodes[j].weights[k] = RandomDouble() * 2 - 1;
                            if (RandomDouble() < mutationRate * 10)
                                child.layers[i].Nodes[j].weights[k] += mutationRate * (RandomDouble() * 2 - 1);
                        }
                    }
                }
                return (Agent)child;
            }

            [Serializable]
            private class Layer
            {

                internal Node[] Nodes;

                internal Layer(int[] topology, int layerNum)
                {
                    Nodes = new Node[topology[layerNum]];
                    for (int i = 0; i < topology[layerNum]; i++)
                        Nodes[i] = new Node(topology, layerNum, i);
                }

                internal Layer(int[] topology, int layerNum, Layer layer)
                {
                    Nodes = new Node[topology[layerNum]];
                    for (int i = 0; i < topology[layerNum]; i++)
                        Nodes[i] = new Node(topology, layerNum, i, layer.Nodes[i]);
                }

                internal void Activate(double[] inputs)
                {
                    for (int i = 0; i < Nodes.Length; i++)
                        Nodes[i].Activate(inputs);
                }

                internal double[] GetOutputs()
                {
                    double[] outputs = new double[Nodes.Length];
                    for (int i = 0; i < Nodes.Length; i++)
                        outputs[i] = Nodes[i].GetValue();
                    return outputs;
                }
            }

            [Serializable]
            private class Node
            {
                private readonly int id;
                private double value;
                internal double[] weights;
                internal double bias;

                public Node(int[] topology, int layerNum, int _id, Node node)
                {
                    id = _id;
                    if (layerNum == 0)
                        return;
                    weights = new double[topology[layerNum - 1]];
                    for (int i = 0; i < weights.Length; i++)
                        weights[i] = node.weights[i];
                    bias = node.bias;
                }

                public Node(int[] topology, int layerNum, int _id)
                {
                    id = _id;
                    if (layerNum == 0)
                        return;
                    weights = new double[topology[layerNum - 1]]; //one for each node in prev layer
                    for (int i = 0; i < weights.Length; i++)
                        weights[i] = RandomDouble() * 2 - 1;
                    bias = RandomDouble() * 2 - 1;
                }

                public double Activate(double[] inputs)
                {
                    if (weights == null)
                    {
                        value = inputs[id];
                        return value;
                    }
                    value = 0;
                    for (int i = 0; i < weights.Length; i++)
                        value += inputs[i] * weights[i];
                    value += bias;
                    value = Sigmoid(value);
                    return value;
                }

                public double GetValue() { return value; }

                public static double Sigmoid(double value)
                {
                    return (1.0 / (1.0 + Math.Exp(-value)) * 2 - 1);
                }
            }
        }
    }
}
