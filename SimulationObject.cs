using System;
using System.Drawing;
using static MlEco.Library;

namespace mlEco
{
    public class SimulationObject
    {
        public double size;
        public Position position { get; internal set; }
        public RectangleF rectangle { get; internal set; }

        public double GetSquaredDistanceFrom(ICollidable collidable)
        {
            return (this.position.x - collidable.position.x).Pow(2) + 
                    (this.position.y - collidable.position.y).Pow(2);
        }
    }

    public struct Position
    {
        public double x { get; internal set; }
        public double y { get; internal set; }

        public Position(double x, double y)
        {
            this.x = x;
            this.y = y;
        }
    }
}
