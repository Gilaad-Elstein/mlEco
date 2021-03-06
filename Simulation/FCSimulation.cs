﻿using System;
using static MlEco.Literals;
using static MlEco.Library;
using System.Collections.Generic;

namespace MlEco
{
    [Serializable]
    public class FCSimulation : Simulation
    {
        private int numDied = 0;

        protected override void EnforceMinCreatures()
        {
            if (Creatures.Count < MIN_CREATURES)
            {
                Creatures.Sort();
                Creatures.Reverse();
                for (int i = 0; i < MIN_CREATURES - Creatures.Count; i++)
                {
                    Creature PartnerA = Creatures[RandomInt(10)];
                    Creature PartnerB = Creatures[RandomInt(10)];
                    while (PartnerA == PartnerB)
                    {
                        PartnerB = Creatures[RandomInt(10)];
                    }
                    Creature offspring = new Creature(PartnerA.agent.CrossOver(PartnerB.agent), new Position(RandomDouble(), RandomDouble()))
                    {
                        lastMatedAtTick = ticksElapsed
                    };
                    Creatures.Add(offspring);
                }
            }
        }

        protected override void KillCreature(Creature c)
        {
            base.KillCreature(c);
            numDied++;
        }

        protected override void RunFrame()
        {
            base.RunFrame();
            while (numDied >= INIT_CREATURES_NUM)
            {
                generation++;
                numDied -= INIT_CREATURES_NUM;
            }
        }

        protected override void UpdateMating()
        {
            List<Creature> matingCreatures = new List<Creature>();
            List<Creature> matedCreatures = new List<Creature>();
            List<Creature> offspringPool = new List<Creature>();

            foreach (Creature creature in Creatures)
            {
                if (creature.readyToMate && creature.mating)
                    matingCreatures.Add(creature);
            }

            foreach (Creature PartnerA in matingCreatures)
            {
                foreach (Creature PartnerB in PartnerA.collidingCreatures)
                {
                    if (!PartnerB.readyToMate || !PartnerB.mating)
                        continue;

                    if (!matedCreatures.Contains(PartnerA) &&
                        !matedCreatures.Contains(PartnerB))
                    {
                        Creature offspring = new Creature(PartnerA.agent.CrossOver(PartnerB.agent), new Position(RandomDouble(), RandomDouble()));
                        offspringPool.Add(offspring);
                        matedCreatures.Add(PartnerA);
                        matedCreatures.Add(PartnerB);
                        offspring.lastMatedAtTick = ticksElapsed;
                        PartnerA.lastMatedAtTick = ticksElapsed;
                        PartnerB.lastMatedAtTick = ticksElapsed;
                        PartnerA.agent.fitness += 10;
                        PartnerB.agent.fitness += 10;
                    }
                }
            }
            Creatures.AddRange(offspringPool);

            if (Creatures.Count > MAX_CREATURES)
            {
                Creatures.Sort();
                double maxKeepScore = Creatures[Creatures.Count - 1].agent.fitness *
                                          CREATURE_MAX_LIFESPAN;
                while (Creatures.Count > MAX_CREATURES)
                {
                    int i = RandomInt(Creatures.Count);

                    if (Creatures[i].agent.fitness *
                    (CREATURE_MAX_LIFESPAN - Creatures[i].lifeTime) /
                        maxKeepScore < RandomDouble())
                    {
                        KillCreature(Creatures[i]);
                    }
                }
            }
        }
    }
}
