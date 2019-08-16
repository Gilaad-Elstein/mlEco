using System;
using static MlEco.Literals;
using static MlEco.Library;
using System.Collections.Generic;

namespace MlEco
{
    [Serializable]
    public class ViviparusSimulation : Simulation
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
                    Creature baby = new Creature(PartnerA.agent.CrossOver(PartnerB.agent), new Position(RandomDouble(), RandomDouble()))
                    {
                        lastMatedAtTick = ticksElapsed
                    };
                    Creatures.Add(baby);
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
            List<Creature> offspring = new List<Creature>();

            foreach (Creature creature in Creatures)
            {
                if (ticksElapsed - creature.lastMatedAtTick > MATING_CYCLE_LENGTH)
                    creature.readyToMate = true;
                else
                    creature.readyToMate = false;

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
                        Creature baby = new Creature(PartnerA.agent.CrossOver(PartnerB.agent), new Position(RandomDouble(), RandomDouble()));
                        offspring.Add(baby);
                        matedCreatures.Add(PartnerA);
                        matedCreatures.Add(PartnerB);
                        baby.lastMatedAtTick = ticksElapsed;
                        PartnerA.lastMatedAtTick = ticksElapsed;
                        PartnerB.lastMatedAtTick = ticksElapsed;
                        PartnerA.fitness += 10;
                        PartnerB.fitness += 10;
                    }
                }
            }
            Creatures.AddRange(offspring);

            if (Creatures.Count > MAX_CREATURES)
            {
                Creatures.Sort();
                double maxKeepScore = Creatures[Creatures.Count - 1].fitness *
                                          CREATURE_MAX_LIFESPAN;
                while (Creatures.Count > MAX_CREATURES)
                {
                    int i = RandomInt(Creatures.Count);

                    if (Creatures[i].fitness *
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
