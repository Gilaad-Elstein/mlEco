using System;
using System.Collections.Generic;
using static MlEco.mlZoo;
using static MlEco.Library;
using static MlEco.Literals;
using System.Diagnostics;

namespace MlEco
{
    public class Simulation
    {
        public static int[] topology = new int[] { 3, 4, 5 };
        public int numCreatures;

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
            this.numCreatures = INIT_CREATURES_NUM;
            for (int i=0; i < numCreatures; i++)
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

        public Simulation(int _numCreatures, int _numFood)
        {
            this.numCreatures = _numCreatures;
            for (int i = 0; i < numCreatures; i++)
                Creatures.Add(new Creature(new FCBrain(topology),
                              new Position(RandomDouble(), RandomDouble())));

            for (int i = 0; i < _numFood; i++)
                Foods.Add(new Food());

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
                UpdateMovement();
                UpdateMating();
                UpdateCreatures();


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

        private void UpdateCreatures()
        {
            foreach (Creature creature in Creatures)
            {
                if (creature.mating)
                    creature.actionColor = new double[] { 1, 0, 0 };
                else
                    creature.actionColor = new double[] { 0, 0, 0 };

                if (!creature.keyboardCreature)
                {
                    creature.brain.Activate(creature.GetSensory());
                    creature.Act(creature.brain.GetOutputs());
                }
            }
        }

        private void UpdateMovement()
        {
            foreach (Creature creature in Creatures)
            {
                if (creature.turningLeft && !creature.turningRight)
                    creature.heading += 0.15;
                else if (creature.turningRight && !creature.turningLeft)
                    creature.heading -= 0.15;

                if (creature.movingFarward && !creature.movingBackward)
                {
                    creature.position.x += 0.01 * Math.Cos(creature.heading);
                    creature.position.y -= 0.01 * Math.Sin(creature.heading) * ASPECT_RATIO;
                    foreach (double obstructedHeading in creature.obstructedFromHeadings)
                    {
                        creature.position.x -= 0.01 * Math.Cos(obstructedHeading);
                        creature.position.y -= 0.01 * Math.Sin(obstructedHeading) * ASPECT_RATIO;
                    }
                }
                else if (creature.movingBackward && !creature.movingFarward)
                {
                    creature.position.x -= 0.01 * Math.Cos(creature.heading);
                    creature.position.y += 0.01 * Math.Sin(creature.heading);
                    foreach (double obstructedHeading in creature.obstructedFromHeadings)
                    {
                        creature.position.x -= 0.01 * Math.Cos(obstructedHeading);
                        creature.position.y -= 0.01 * Math.Sin(obstructedHeading) * ASPECT_RATIO;
                    }
                }

                if (creature.position.x > 1)
                    creature.position.x = 1;
                if (creature.position.y > 1)
                    creature.position.y = 1;
                if (creature.position.x < 0)
                    creature.position.x = 0;
                if (creature.position.y < 0)
                    creature.position.y = 0;
            }
        }

        protected virtual void UpdateCollisions()
        {
            foreach (Creature creature in Creatures)
            {
                creature.obstructedFromHeadings.Clear();
                creature.collidingCreatures.Clear();
                creature.proximateCreatures.Clear();

                foreach (Creature obstruction in Creatures)
                {
                    if (creature == obstruction)
                        continue;
                    if (creature.ProximateTo(obstruction, 3.75))
                    {
                        creature.obstructedFromHeadings.Add(
                            Math.Atan2(obstruction.position.y - creature.position.y,
                            obstruction.position.x - creature.position.x));
                        creature.collidingCreatures.Add(obstruction);
                    }
                    if (creature.ProximateTo(obstruction, SENSORY_SPAN))
                        creature.proximateCreatures.Add(obstruction);
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

            foreach(Creature PartnerA in Creatures)
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
                    stopWatch.Stop();
                    rate = ticks;
                    stopWatch.Reset();
                    ticks = 0;
                }
            }
        }
    }
}
