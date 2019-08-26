using mlEco.Library.mlZoo.Neat;
using static MlEco.NeatAgent;
using NUnit.Framework;
using System;
using MlEco;

namespace mlEco.Tests
{
    [TestFixture()]
    public class TestNeatAgent
    {
        [Test()]
        public void TestCase()
        {
        }

        [Test()]
        public void TestValidateNodePair()
        {
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
                    else if (index1 < NUM_OUTPUTS)
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
                    else if (index2 < NUM_OUTPUTS)
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
    }
}
