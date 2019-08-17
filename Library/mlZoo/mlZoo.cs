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
        public abstract class Agent
        {
            internal static readonly double MutationRate = 0.01;

            internal abstract double[] Activate(double[] inputs);
            internal abstract double[] GetOutputs();
            internal abstract Agent CrossOver(Agent _partner);
        }
    }
}