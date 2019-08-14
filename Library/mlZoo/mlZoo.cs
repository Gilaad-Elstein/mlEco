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
            internal static readonly double mutationRate = 0.01;

            public abstract double[] Activate(double[] inputs);
            internal abstract double[] GetOutputs();
            internal abstract Agent CrossOver(Agent _partner);
        }
    }
}