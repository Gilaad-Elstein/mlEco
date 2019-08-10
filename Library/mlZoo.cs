using System;
using static MlEco.Library;

namespace MlEco
{
    public delegate double FitnessFunctionPtr(mlZoo.FCBrain n);
    public static class mlZoo
    {

        [Serializable]
        public class FCBrain : IComparable<FCBrain>
        {
            private static readonly double mutationRate = 0.01;

            private Layer[] layers;
            private int[] topology;

            public double fitness;

            public int CompareTo(FCBrain other_n)
            {
                return fitness.CompareTo(other_n.fitness);
            }

            private FCBrain()
            {

            }

            public FCBrain(FCBrain n)
            {
                topology = n.topology;
                layers = new Layer[topology.Length];
                for (int i = 0; i < topology.Length; i++)
                {
                    layers[i] = new Layer(topology, i, n.layers[i]);
                }
            }

            public FCBrain(int[] _topology)
            {
                topology = _topology;
                layers = new Layer[topology.Length];
                for (int i = 0; i < topology.Length; i++)
                    layers[i] = new Layer(topology, i);
            }

            public double[] Activate(double[] inputs)
            {
                layers[0].Activate(inputs);
                for (int i = 1; i < topology.Length; i++)
                    layers[i].Activate(layers[i - 1].GetOutputs());
                return layers[layers.Length - 1].GetOutputs();
            }

            internal double[] GetOutputs()
            {
                return layers[layers.Length - 1].GetOutputs();
            }

            internal FCBrain Mutate()
            {
                FCBrain new_n = new FCBrain(this);
                foreach (Layer layer in this.layers)
                {
                    foreach (Node node in layer.Nodes)
                    {
                        if (node.weights == null)
                            continue; //skip inputs
                        for (int i = 0; i < node.weights.Length; i++)
                        {
                            double node_mutation_type = RandomDouble();
                            if (node_mutation_type < 0.2)
                                node.weights[i] += (2 * RandomDouble() - 1) * 0.1;
                            else if (node_mutation_type < 0.25)
                                node.weights[i] = 2 * RandomDouble() - 1;
                        }
                        double mutation_type = RandomDouble();
                        if (mutation_type < 0.2)
                            node.bias += (2 * RandomDouble() - 1) * 0.2;
                        else if (mutation_type < 0.25)
                            node.bias = 2 * RandomDouble() - 1;
                    }
                }
                return new_n;
            }

            internal FCBrain CrossOver(FCBrain partner)
            {
                FCBrain child = new FCBrain(topology);
                for (int i = 1; i < topology.Length; i++)
                {
                    for (int j = 0; j < topology[i]; j++)
                    {
                        for (int k = 0; k < this.layers[i].Nodes[j].weights.Length; k++)
                        {
                            child.layers[i].Nodes[j].weights[k] = RandomDouble() < 0.5 ?//this.fitness/(double)(this.fitness + partner.fitness) ?
                                this.layers[i].Nodes[j].weights[k] : partner.layers[i].Nodes[j].weights[k];
                            if (RandomDouble() < mutationRate)
                                child.layers[i].Nodes[j].weights[k] = RandomDouble() * 2 - 1;
                            if (RandomDouble() < mutationRate)
                                child.layers[i].Nodes[j].weights[k] += mutationRate * (RandomDouble() * 2 - 1);
                        }
                    }
                }
                return child;
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