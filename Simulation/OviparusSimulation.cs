using System;

namespace MlEco
{
    [Serializable]
    public class OviparusSimulation : Simulation
    {

        protected override int GetGenerationNum()
        {
            return 0;
        }

        protected override void UpdateNumDied(int numDied)
        {
           
        }
    }
}
