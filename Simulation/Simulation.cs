using System;
using System.Collections.Generic;
using static MlEco.Library;
using static MlEco.Literals;
using System.Diagnostics;
using System.Drawing;
using QuadTreeLib;
using System.Linq;

namespace MlEco
{
    public enum SimulationType { FullyConnected, NEAT }

    [Serializable]
    public abstract class Simulation
    {
        public int generation = 0;

        public List<Creature> Creatures = new List<Creature>();
        public List<Food> Foods = new List<Food>();
        QuadTree<ICollidable> quadTree;

        public bool drawLock = false;
        public bool updateLock = false;
        public bool isRunning = false; 
        public bool AppAsksEndSimualtion = false;
        public bool reqMarkBestCreatures = false;

        public TickRateCounter tickRateCounter;
        public int ticksElapsed = 0;
        public int msPerTick = SLOW_TICK_RATE;

        public readonly bool keyboardCreatureEnabled = false;
        public Creature keyboardCreature;

        public Simulation()
        {
            for (int i=0; i < INIT_CREATURES_NUM; i++)
            {
                Creatures.Add(new Creature(new Position(RandomDouble(), RandomDouble())));
            }

            for (int i = 0; i < INIT_FOOD_NUM; i++)
            {
                Foods.Add(new Food());
            }

            if (keyboardCreatureEnabled)
            {
                keyboardCreature = new Creature();
                Creatures.Add(keyboardCreature);
            }
            tickRateCounter.Init();
        }

        public void Run()
        {
            isRunning = true;
            while(true)
            {
                if (AppAsksEndSimualtion)
                    break;
                while (drawLock)
                    continue;
                updateLock = true;

                RunFrame();
            }
            isRunning = false;
        }

        protected virtual void RunFrame()
        {

            Stopwatch watch = new Stopwatch();
            watch.Start();

            UpdateCollisions();
            UpdateMating();
            UpdateCreatures();
            EnforceMinCreatures();

            if (reqMarkBestCreatures)
            {
                Creatures.Sort();
                Creatures.Reverse();
                int i = 0;
                for (; i < MARK_BEST_NUM_CREATURES; i++)
                {
                    Creatures[i].markBest = true;
                }
                for (; i < Creatures.Count; i++)
                {
                    Creatures[i].markBest = false;
                }

            }

            updateLock = false;
            ticksElapsed++;
            watch.Stop();

            if (msPerTick != 0)
            {
                int sleepTime = msPerTick - watch.Elapsed.Milliseconds;
                if (sleepTime > 0)
                {
                    System.Threading.Thread.Sleep(sleepTime);
                }
            }
            tickRateCounter.Update();
        }

        protected virtual void EnforceMinCreatures() { }

        public double GetAvarageFitness()
        {
            double sum = 0;
            for (int i=0; i < Creatures.Count; i++)
            {
                sum += Creatures[i].agent.fitness;
            }
            return sum / Creatures.Count;
        }

        private void UpdateCreatures()
        {
            List<Creature> deadCreatures = new List<Creature>();
            foreach (Creature creature in Creatures)
            {
                if (!creature.isAlive)
                {
                    deadCreatures.Add(creature);
                    continue;
                }
            }
            foreach (Creature creature in deadCreatures) { KillCreature(creature); }

            //any optimizing here goes straight to performance
            foreach (Creature creature in Creatures)
            {
                creature.SensoryGroup = quadTree.Query(new RectangleF((float)creature.position.x - (float)SENSORY_SPAN,
                                                                               (float)creature.position.y - (float)SENSORY_SPAN,
                                                                               2*(float)SENSORY_SPAN,
                                                                               2*(float)SENSORY_SPAN));
                creature.SensoryGroup.Remove(creature);
                creature.SensoryGroup.Sort(new IColliadbleComparer(creature));
                creature.Update();
            }

        }


        private void ClearCreaturesCollisions()
        {
            foreach (Creature creature in Creatures)
            {
                creature.SensoryGroup.Clear();
                creature.obstructedFromHeadings.Clear();
                creature.collidingCreatures.Clear();
                creature.proximateCreatures.Clear();
            }
        }

        protected virtual void UpdateCollisions()
        {
            ClearCreaturesCollisions();
            quadTree = new QuadTree<ICollidable>(new RectangleF(0, 0, 2, 2));
            foreach (Creature creature in Creatures) { quadTree.Insert(creature); }
            foreach (Food food in Foods)             { quadTree.Insert(food); }

            for (int i = 0; i <= COLLISION_SEG_NUM; i++)
            {
                for (int j = 0; j <= COLLISION_SEG_NUM; j++)
                {
                    List<ICollidable> zoneList = quadTree.Query(new RectangleF((float)i / COLLISION_SEG_NUM,
                                                                                (float)j / COLLISION_SEG_NUM,
                                                                                1f / COLLISION_SEG_NUM,
                                                                                1f / COLLISION_SEG_NUM));
                    foreach (ICollidable collidable in zoneList)
                    {
                        foreach (ICollidable obstruction in zoneList)
                        {
                            if (collidable == obstruction)
                                continue;
                            if (collidable.rectangle.IntersectsWith(obstruction.rectangle))
                                {
                                    collidable.CollideWith(obstruction);
                                }
                        }
                    }
                }
            }
        }

        protected abstract void UpdateMating();

        protected virtual void KillCreature(Creature c)
        {
            Creatures.Remove(c);
        }

        public void RequestEnd()
        {
            AppAsksEndSimualtion = true;
        }

        [Serializable]
        public struct TickRateCounter
        {
            public double rate;

            [NonSerialized]
            private Stopwatch stopWatch;

            private int ticks;

            public void Init()
            {
                stopWatch = new Stopwatch();
                ticks = 0;
            }

            public void Update()
            {
                if (stopWatch == null)
                {
                    Init();
                }
                if (!stopWatch.IsRunning)
                    stopWatch.Start();
                ticks++;
                if (stopWatch.Elapsed.Seconds >= 1)
                {
                    rate = ticks;
                    ticks = 0;
                    stopWatch.Stop();
                    stopWatch.Reset();
                }
            }
        }
    }
}
