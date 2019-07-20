using System;
using System.Collections.Generic;
using static MlEco.mlZoo;
using static MlEco.Library;
using static MlEco.Literals;
using System.Diagnostics;
using System.Drawing;
using QuadTreeLib;

namespace MlEco
{
    public class Simulation
    {
        public static int[] topology = new int[] { 3, 4, 5 };
        public int maxCreatures;
        public int numSegments = 1;

        public List<Creature> Creatures = new List<Creature>();
        public List<Food> Foods = new List<Food>();

        public bool drawLock = false;
        public bool updateLock = false;
        public bool isRunning = false; 
        public bool AppAsksEndSimualtion = false;

        public TickRateCounter tickRateCounter;
        public int ticksElapsed = 0;
        public int msPerTick = SLOW_TICK_RATE;

        public readonly bool keyboardCreatureEnabled = true;
        public Creature keyboardCreature;

        public Simulation()
        {
            this.maxCreatures = INIT_CREATURES_NUM;
            for (int i=0; i < maxCreatures; i++)
                Creatures.Add(new Creature(new FCBrain(topology),
                              new Position(RandomDouble(), RandomDouble())));

            for (int i = 0; i < INIT_FOOD_NUM; i++)
                Foods.Add(new Food());
                
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

                Stopwatch watch = new Stopwatch();
                watch.Start();

                UpdateCollisions();
                UpdateMating();
                UpdateCreatures();
                UpdateFood();


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
            isRunning = false;
        }

        private void UpdateFood()
        {
            List<Food> consumedFoods = new List<Food>();
            foreach (Food food in Foods)
            {
                if (food.consumed)
                {
                    consumedFoods.Add(food);
                }
            }
            foreach (Food food in consumedFoods) { Foods.Remove(food); }
        }

        private void UpdateCreatures()
        {
            foreach(Creature creature in Creatures)
            {
                creature.Update();
            }
        }

        private void ClearCreatureCollisions()
        {
            foreach (Creature creature in Creatures)
            {
                creature.obstructedFromHeadings.Clear();
                creature.collidingCreatures.Clear();
                creature.proximateCreatures.Clear();
            }
        }

        protected virtual void UpdateCollisions()
        {
            ClearCreatureCollisions();
            QuadTree<ICollidable> quadTree = new QuadTree<ICollidable>(new RectangleF(0, 0, 2, 2));
            foreach (Creature creature in Creatures) { quadTree.Insert(creature); }
            foreach (Food food in Foods)             { quadTree.Insert(food); }

            for (int i = 0; i <= numSegments; i++)
            {
                for (int j = 0; j <= numSegments; j++)
                {
                    List<ICollidable> zoneList = quadTree.Query(new RectangleF((float)i / numSegments,
                                                                                (float)j / numSegments,
                                                                                1f / numSegments,
                                                                                1f / numSegments));
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

    private void UpdateMating()
        {
            List<Creature> matingCreatures = new List<Creature>();
            List<Creature> matedCreatures = new List<Creature>();
            List<Creature> offspring = new List<Creature>();
            List<Creature> killList = new List<Creature>();

            foreach (Creature creature in Creatures)
            {
                if (ticksElapsed - creature.lastMatedAtTick > MATING_CYCLE_LENGTH)
                    creature.readyToMate = true;
                else
                    creature.readyToMate = false;

                if (creature.readyToMate && creature.mating)
                    matingCreatures.Add(creature);
            }

            foreach(Creature PartnerA in matingCreatures)
            {
                foreach(Creature PartnerB in PartnerA.collidingCreatures)
                {
                    if (!PartnerB.readyToMate || !PartnerB.mating)
                        continue;

                    if (!matedCreatures.Contains(PartnerA) &&
                        !matedCreatures.Contains(PartnerB))
                    {
                        Creature baby = new Creature(PartnerA.brain.CrossOver(PartnerB.brain), PartnerA.position);
                        offspring.Add(baby);
                        matedCreatures.Add(PartnerA);
                        matedCreatures.Add(PartnerB);
                        baby.lastMatedAtTick = ticksElapsed;
                        PartnerA.lastMatedAtTick = ticksElapsed;
                        PartnerB.lastMatedAtTick = ticksElapsed;

                        int killID = -1;
                        if (killList.Count < Creatures.Count)
                        {
                            while (killID == -1 || killList.Contains(Creatures[killID]) ||
                            (keyboardCreatureEnabled && Creatures[killID] == keyboardCreature))
                                killID = RandomInt(Creatures.Count);
                            killList.Add(Creatures[killID]);
                        }
                    }
                }
            }

            foreach (Creature creature in killList)
                Creatures.Remove(creature);
            Creatures.AddRange(offspring);
        }

        public void RequestEnd()
        {
            AppAsksEndSimualtion = true;
        }

        public struct TickRateCounter
        {
            public double rate;

            private Stopwatch stopWatch;
            private int ticks;

            public void Init()
            {
                stopWatch = new Stopwatch();
                ticks = 0;
            }

            public void Update()
            {
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
