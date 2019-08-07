using System;
namespace MlEco
{
    public static class Literals
    {
        public static readonly int INIT_CREATURES_NUM = 60;
        public static readonly int MAX_CREATURES = 60;
        public static readonly double INIT_CREATURES_SIZE = 1.25;
        public static readonly int INIT_CREATURE_ENERGY = 1000;
        public static readonly int MATING_CYCLE_LENGTH = 50;
        public static readonly double SENSORY_SPAN = 0.1;

        public static readonly double MAX_RANDOM_FOOD_SIZE = 0.75;
        public static readonly double INIT_FOOD_NUM = 150;
        public static readonly double[] FOOD_FILL_COLOR = new double[] { 1, 1, 0 };
        public static readonly double[] FOOD_LINE_COLOR = new double[] { 0, 0, 0 };

        public static readonly int SLOW_TICK_RATE = 30;
        public static readonly int SLOW_DRAW_RATE = 30;
        public static readonly int FAST_DRAW_RATE = 500;


        public static readonly double ASPECT_RATIO = 16/9.0;

        public static readonly Cairo.Color BLACK = new Cairo.Color(0, 0, 0);
    }
}
