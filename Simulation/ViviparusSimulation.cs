using System;
using static MlEco.Literals;

namespace MlEco
{
    [Serializable]
    public class ViviparusSimulation : Simulation
    {
        public int numDied = 0;

        protected override int GetGenerationNum()
        {
            return INIT_CREATURES_NUM != 0 ? (int)(numDied / INIT_CREATURES_NUM) : 0;
        }

        protected override void UpdateNumDied(int numDied)
        {
            this.numDied += numDied;
        }
    }
}
