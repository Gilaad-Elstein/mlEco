using System;
using System.Drawing;
using mlEco;
using static MlEco.Library;
using static MlEco.Literals;


namespace MlEco
{
    [Serializable]
    public class Food : SimulationObject, ICollidable
    {
        public bool consumed = false;
        internal int energy;

        public Food()
        {
            Init();
            size = (RandomDouble() * 0.75 + 1 / 3.0) * MAX_RANDOM_FOOD_SIZE;
            energy = 2*(int)(size*100 / MAX_RANDOM_FOOD_SIZE);
        }

        private void Init()
        {
            position = new Position(RandomDouble(), RandomDouble());
            rectangle = new RectangleF((float)position.x, (float)position.y, 1.5f * (float)size / 100, 1.5f * (float)ASPECT_RATIO * (float)size / 100);
        }

        public void CollideWith(ICollidable collidable)
        {
            Init();
        }
    }
}
