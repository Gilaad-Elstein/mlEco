using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

namespace MlEco
{
    public static class Library
    {
        private static readonly Random random = new Random();
        private static Random seededRandom = new Random(0);
        public static bool diagnosticsMode = false;

        public const double twoPi = 2*Math.PI;
        public const double Pi = Math.PI;
        public const double halfPi = Math.PI/2;

        public static void Save(Simulation simulation)
        {
            Stream stream = File.Open("lastSim.dat", FileMode.Create);
            BinaryFormatter formatter = new BinaryFormatter();
            formatter.Serialize(stream, simulation);
            stream.Close();
        }

        public static Simulation Load()
        {
            Stream stream;
            if (File.Exists("lastSim.dat"))
            {
                stream = File.Open("lastSim.dat", FileMode.Open);
            }
            else
            {
                return MlEcoApp.GetNewSimulation();
            }
            BinaryFormatter formatter = new BinaryFormatter();
            Simulation simulation = (Simulation)formatter.Deserialize(stream);
            stream.Close();
            return simulation;
        }

        public static double RangeTwoPI(double value)
        {
            while (value < 0) { value += 2 * Math.PI; }
            while (value > 2 * Math.PI) { value -= 2 * Math.PI; }
            return value;
        }

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

        public static void Here()
        {
            Here("Here");
        }


        public static void Here(object obj)
        {
            String text;
            text = obj.ToString();
            Console.WriteLine(text +  " | time stamp: {0:D2}:{1:D2}:{2:D2}:{3}",
                DateTime.Now.Hour,
                DateTime.Now.Minute,
                DateTime.Now.Second,
                DateTime.Now.Millisecond);
        }

        public interface ICollidable : QuadTreeLib.IHasRect
        {
            Position position { get; }
            void CollideWith(ICollidable collidable);
        }

        public class IColliadbleComparer : IComparer<ICollidable>
        {
            Creature creature;
            public IColliadbleComparer(Creature creature)
            {
                this.creature = creature;
            }

            public int Compare(ICollidable x, ICollidable y)
            {
                double distX = creature.GetSquaredDistanceFrom(x);
                double distY = creature.GetSquaredDistanceFrom(y);

                if (Math.Abs(distX - distY) < 0.00001)
                    return 0;
                return  distX > distY ? 1 : -1;
            }
        }
    }
}
