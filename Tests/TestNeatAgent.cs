using mlEco.Library.mlZoo.Neat;
using static MlEco.NeatAgent;
using static MlEco.Library;
using NUnit.Framework;
using System;
using MlEco;

namespace mlEco.Tests
{
    [TestFixture()]
    public class TestNeatAgent
    {

        [Test()]
        public void TestValidateNodePair()
        {
            NeatAgent.ClearGlobalInnovationSet();

            NUM_INPUTS = 7;
            NUM_OUTPUTS = 5;

            int testDepth = 100;

            for (int i=0; i < testDepth; i++)
            {
                for (int j=0; j  < testDepth; j++)
                {
                    NodeGene node1;
                    NodeGene node2;
                    NodeGene.NodeType type1;
                    NodeGene.NodeType type2;
                    int index1 = i;
                    int index2 = j;

                    if ( index1 < NUM_INPUTS)
                    {
                        type1 = NodeGene.NodeType.Input;
                        node1 = new NodeGene(type1, index1);
                    }
                    else if (index1 < NUM_OUTPUTS + NUM_INPUTS)
                    {
                        type1 = NodeGene.NodeType.Output;
                        node1 = new NodeGene(type1, index1);
                    }
                    else
                    {
                        type1 = NodeGene.NodeType.Hidden;
                        node1 = new NodeGene(type1, index1, new MlEco.Position(0, 0));
                    }
                    if (index2 < NUM_INPUTS)
                    {
                        type2 = NodeGene.NodeType.Input;
                        node2 = new NodeGene(type2, index2);
                    }
                    else if (index2 < NUM_OUTPUTS + NUM_INPUTS)
                    {
                        type2 = NodeGene.NodeType.Output;
                        node2 = new NodeGene(type2, index2);
                    }
                    else
                    {
                        type2 = NodeGene.NodeType.Hidden;
                        node2 = new NodeGene(type2, index2, new MlEco.Position(0, 0));
                    }

                    if (type2 == NodeGene.NodeType.Input ||
                        type1 == NodeGene.NodeType.Output)
                    {
                        Assert.IsFalse(NeatAgent.ValidatNodePair((node1, node2)));
                    }

                    else if (type1 == NodeGene.NodeType.Hidden &&
                        type2 == NodeGene.NodeType.Hidden &&
                        index1 >= index2)
                    {
                        Assert.IsFalse(NeatAgent.ValidatNodePair((node1, node2)));
                    }
                    else
                    {
                        Assert.IsTrue(NeatAgent.ValidatNodePair((node1, node2)));
                    }
                }
            }

        }

        [Test()]
        public void TestGetInnovationNumber()
        {
            NeatAgent.ClearGlobalInnovationSet();
            NUM_INPUTS = 2;
            NUM_OUTPUTS = 2;
            NodeGene[] genes = new NodeGene[]
            {
                new NodeGene(NodeGene.NodeType.Input, 0),
                new NodeGene(NodeGene.NodeType.Input, 1),
                new NodeGene(NodeGene.NodeType.Output, 2),
                new NodeGene(NodeGene.NodeType.Output, 3),
                new NodeGene(NodeGene.NodeType.Hidden, 4, new Position(0,0)),
                new NodeGene(NodeGene.NodeType.Hidden, 4, new Position(1,1))
            };

            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[0], genes[0])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[0], genes[1])));
            Assert.That(GetInnovationNumber((genes[0], genes[2])), Is.EqualTo(0));
            Assert.That(GetInnovationNumber((genes[0], genes[3])), Is.EqualTo(1));
            Assert.That(GetInnovationNumber((genes[0], genes[4])), Is.EqualTo(2));
            Assert.That(GetInnovationNumber((genes[0], genes[5])), Is.EqualTo(2));

            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[1], genes[0])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[1], genes[1])));
            Assert.That(GetInnovationNumber((genes[1], genes[2])), Is.EqualTo(3));
            Assert.That(GetInnovationNumber((genes[1], genes[3])), Is.EqualTo(4));
            Assert.That(GetInnovationNumber((genes[1], genes[4])), Is.EqualTo(5));
            Assert.That(GetInnovationNumber((genes[1], genes[5])), Is.EqualTo(5));

            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[2], genes[0])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[2], genes[1])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[2], genes[2])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[2], genes[3])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[2], genes[4])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[2], genes[5])));

            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[3], genes[0])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[3], genes[1])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[3], genes[2])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[3], genes[3])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[3], genes[4])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[3], genes[5])));

            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[4], genes[0])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[4], genes[1])));
            Assert.That(GetInnovationNumber((genes[4], genes[2])), Is.EqualTo(6));
            Assert.That(GetInnovationNumber((genes[4], genes[3])), Is.EqualTo(7));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[4], genes[4])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[4], genes[5])));

            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[5], genes[0])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[5], genes[1])));
            Assert.That(GetInnovationNumber((genes[5], genes[2])), Is.EqualTo(6));
            Assert.That(GetInnovationNumber((genes[5], genes[3])), Is.EqualTo(7));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[5], genes[4])));
            Assert.Throws<ArgumentException>(() => GetInnovationNumber((genes[5], genes[5])));
        }

        [Test()]
        public void TestActivate()
        {
            ClearGlobalInnovationSet();
            NUM_INPUTS = 5;
            NUM_OUTPUTS = 5;
            int numHidden = 5;
            double weight = 1;
            double[] inputs = new double[] { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
            NeatAgent agent = new NeatAgent(NUM_INPUTS, NUM_OUTPUTS);

            for (int i=0; i < numHidden; i++)
            {
                agent.Nodes.Add(new NodeGene(NodeGene.NodeType.Hidden, agent.Nodes.Count, new Position(0, 0)));
            }

            for (int i=0; i < agent.Nodes.Count; i++)
            {
                for (int j=0; j < agent.Nodes.Count; j++)
                {
                    if (NeatAgent.ValidatNodePair((agent.Nodes[i], agent.Nodes[j])))
                    {
                        agent.Connections.Add(new ConnectionGene(agent.Nodes[i], agent.Nodes[j], weight));
                    }
                }
            }

            agent.Activate(inputs);
            foreach(double output in agent.GetOutputs())
            {
                Assert.AreEqual(0.999907259884854, output, 1e-15);
            }
        }

    }
}
