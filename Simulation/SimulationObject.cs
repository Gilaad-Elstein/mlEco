using System;
using System.Drawing;
using static MlEco.Library;

namespace mlEco
{
    [Serializable]
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

        public double AngleTo(ICollidable collidable)
        {
            return RangeTwoPI(Math.Atan2(collidable.position.y - position.y,
                                        collidable.position.x - position.x));
        }

        public double AngleToOrigin()
        {
            return RangeTwoPI(Math.Atan2(0.5 - position.y,
                                        0.5 - position.x));
        }
    }

    [Serializable]
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
