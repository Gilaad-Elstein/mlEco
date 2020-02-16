using System;
using static MlEco.Library;
using static MlEco.NeatAgent;
using static MlEco.mlZoo.Agent;
using System.Diagnostics;

namespace mlEco.Library.mlZoo.Neat
{
    internal class ConnectionGene : IComparable
    {
        internal NodeGene InNode;
        internal NodeGene OutNode;
        internal double Weight;
        internal bool Expressed = true;
        internal readonly int InnovationNumber;
        internal readonly double[] DrawColor;

        internal ConnectionGene(NodeGene inNode, NodeGene outNode, double? _weight = null)
        {
            this.InNode = inNode;
            this.OutNode = outNode;
            this.Weight = _weight is null ? RandomDouble() * 2 - 1 : (double)_weight;
            this.InnovationNumber = GetInnovationNumber((InNode, OutNode));
            this.DrawColor = new double[] { RandomDouble(), RandomDouble(), RandomDouble() };
        }

        internal void MutateWeightShift()
        {
            Weight += (RandomDouble() * 2 - 1) * MutationRate;
        }

        internal void MutateWeightRandom()
        {
            Weight = RandomDouble() * 2 - 1;
        }

        internal void MutateExpressed()
        {
            Expressed = !Expressed;
        }

        public int CompareTo(object obj)
        {
            if (!(obj is ConnectionGene))
            {
                throw new InvalidOperationException("Compared ConnectionGene to something that isn't.");
            }
            return this.InnovationNumber.CompareTo(((ConnectionGene)obj).InnovationNumber);
        }
    }
}
