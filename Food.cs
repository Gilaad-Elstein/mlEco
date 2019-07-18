using System;
using static MlEco.Library;
using static MlEco.Literals;


namespace MlEco
{
    public class Food
    {
        public double size;
        public Position position;

        public Food()
        {
            size = (RandomDouble()*0.75 +1/3.0) * MAX_RANDOM_FOOD_SIZE;
            position = new Position(RandomDouble(), RandomDouble());
        }
    }
}
