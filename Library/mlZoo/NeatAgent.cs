namespace MlEco
{
    public static partial class mlZoo
    {
        public class NeatAgent : Agent
        {
            public NeatAgent()
            {
            }

            public override double[] Activate(double[] inputs) { return new double[] { }; }
            internal override double[] GetOutputs() { return new double[] { }; }
            internal override Agent CrossOver(Agent _partner) { return new NeatAgent(); }
        }
    }
}
