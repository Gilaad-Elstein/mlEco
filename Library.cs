using System;
namespace MlEco
{
    public static class Library
    {
        private static readonly Random random = new Random();
        private static Random seededRandom = new Random(0);
        public static bool diagnosticsMode = false;

        public static double Pow(this double a, double b)
        {
            return Math.Pow(a, b);
        }

        public static int Pow(this int a, int b)
        {
            return (int)Math.Pow(a, b);
        }

        public static void ReseedSeededRandom(int seed = 0)
        {
            seededRandom = new Random(seed);
        }

        public static double RandomDouble()
        {
            if (diagnosticsMode)
                return seededRandom.NextDouble();
            return random.NextDouble();
        }

        public static int RandomInt(int maxVal)
        {
            if (diagnosticsMode)
                return seededRandom.Next(maxVal);
            else
                    return random.Next(maxVal);
        }

        public static void Here(string text = "Here")
        {
            Console.WriteLine(text +  " | time stamp: {0:D2}:{1:D2}:{2:D2}:{3}",
                DateTime.Now.Hour,
                DateTime.Now.Minute,
                DateTime.Now.Second,
                DateTime.Now.Millisecond);
        }

        public struct Position
        {
            public double x, y;

            public Position(double x, double y)
            {
                this.x = x;
                this.y = y;
            }
        }
    }
}
