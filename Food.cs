using System;
using System.Drawing;
using static MlEco.Library;
using static MlEco.Literals;


namespace MlEco
{
    public class Food : QuadTreeLib.IHasRect, ICollidable
    {
        public double size;
        public Position position;
        public RectangleF rectangle { get; }
        public bool consumed = false;

        public Food()
        {
            size = (RandomDouble()*0.75 +1/3.0) * MAX_RANDOM_FOOD_SIZE;
            position = new Position(RandomDouble(), RandomDouble());
            rectangle = new RectangleF((float)position.x, (float)position.y, 1.5f * (float)size / 100, 1.5f * (float)ASPECT_RATIO * (float)size / 100);
        }

        public void CollideWith(ICollidable collidable)
        {
            consumed |= collidable is Creature;
        }
    }
}
