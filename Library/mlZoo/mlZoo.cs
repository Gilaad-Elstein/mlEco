using System;

namespace MlEco
{
    public enum AgentType
    {
        FCAgent,
        NeatAgent
    }

    public static partial class mlZoo
    {
        [Serializable]
        public abstract class Agent : IComparable
        {
            internal static readonly double MutationRate = 0.01;
            internal double fitness = 0;

            internal abstract double[] Activate(double[] inputs);
            internal abstract double[] GetOutputs();
            internal abstract Agent CrossOver(Agent _partner);

            public static double Sigmoid(double value)
            {
                return (1.0 / (1.0 + Math.Exp(-value)) * 2 - 1);
            }

            public int CompareTo(object otherAgent)
            {
                if (!(otherAgent is Agent))
                    throw new InvalidOperationException();
                Agent castOtherAgent = (Agent)otherAgent;
                return this.fitness.CompareTo(castOtherAgent.fitness);
            }
        }
    }
}