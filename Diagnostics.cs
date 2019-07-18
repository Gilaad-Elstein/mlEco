using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using Gtk;
using static MlEco.Literals;
using static MlEco.Library;

namespace MlEco
{
    public static class Diagnostics
    {
        public static void Run()
        {
            Library.diagnosticsMode = true; 

            Gtk.Application.Init();
            DiagnosticsMlEcoApp app = new DiagnosticsMlEcoApp();
            Gtk.Application.Run();

            CompareCollisionAlgo(100);


            return;
        }

        public class CandidateSimulation : Simulation
        {
            public CandidateSimulation(int _numCreatures, int _numFood) : base(_numCreatures, _numFood) { }

            public CandidateSimulation() : base() { }

            public void UpdateCollisionAccess()
            {
                UpdateCollisions();
            }
            
            protected override void UpdateCollisions()
            {
                foreach(Creature creature in Creatures)
                {
                    creature.obstructedFromHeadings.Clear();
                    creature.collidingCreatures.Clear();
                    creature.proximateCreatures.Clear();
                }

                int numSegements = 10;
                List<List<Creature>> zonesList = MakeZonesList(numSegements);

                List<List<Creature>> areasList = MakeAreasList(numSegements, zonesList);

                foreach (List<Creature> thisAreaList in areasList)
                {
                    foreach (Creature creature in thisAreaList)
                    {
                        foreach (Creature obstruction in thisAreaList)
                        {
                            if (creature == obstruction)
                                continue;
                            if (!creature.collidingCreatures.Contains(obstruction))
                            {
                                if (creature.ProximateTo(obstruction, 3.75))
                                {
                                    creature.obstructedFromHeadings.Add(
                                        Math.Atan2(obstruction.position.y - creature.position.y,
                                        obstruction.position.x - creature.position.x));

                                    creature.collidingCreatures.Add(obstruction);
                                }
                            }

                            if (!creature.proximateCreatures.Contains(obstruction))
                            {
                                if (creature.ProximateTo(obstruction, SENSORY_SPAN))
                                    creature.proximateCreatures.Add(obstruction);
                            }
                        }
                    }
                }
            }

            private List<List<Creature>> MakeAreasList(int numSegements, List<List<Creature>> zonesList)
            {
                List<List<Creature>> areasList = new List<List<Creature>>();
                for (int i = 0; i < numSegements.Pow(2); i++)
                {
                    List<Creature> thisAreaList = new List<Creature>();
                    for (int j = 0; j < 9; j++)
                    {
                        int thisIndex = i - ((j % 3) - 1) * (numSegements + 1);
                        thisIndex = thisIndex < 0 ? 0 : thisIndex;
                        thisIndex = thisIndex >= numSegements.Pow(2) ?
                                            numSegements.Pow(2)-1 : thisIndex;

                        foreach (Creature creature in zonesList[thisIndex])
                        {
                            thisAreaList.Add(creature);
                        }
                    }
                    areasList.Add(thisAreaList);
                }
                return areasList;
            }

            private List<List<Creature>> MakeZonesList(int numSegements)
            {
                List<List<Creature>> zonesList = new List<List<Creature>>();
                List<Creature> ungridedCreatures = new List<Creature>();
                foreach (Creature creature in Creatures) ungridedCreatures.Add(creature);

                for (int i = 0; i < numSegements; i++)
                {
                    for (int j = 0; j < numSegements; j++)
                    {
                        List<Creature> thisZoneList = new List<Creature>();
                        foreach (Creature creature in ungridedCreatures)
                        {
                            if (creature.position.x >= (double)i / numSegements &&
                                creature.position.x <= (double)(i + 1) / numSegements &&
                                creature.position.y >= (double)j / numSegements &&
                                creature.position.y <= (double)(j + 1) / numSegements)
                            {
                                thisZoneList.Add(creature);
                            }
                        }
                        zonesList.Add(thisZoneList);
                        foreach (Creature creature in thisZoneList) ungridedCreatures.Remove(creature);
                    }
                }
                return zonesList;
            }
        }

        public static void CompareCollisionAlgo(int numLoops)
        {
            CandidateSimulation DiagSim = new CandidateSimulation(100, 100);
            BaseSimulation baseSim = new BaseSimulation(100, 100);

            Console.WriteLine("\n\n\n\n\n\n");
            Console.WriteLine("Running {0} loops with candidate method.", numLoops);

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();

            for (int i = 0; i < numLoops; i++)
            {
                DiagSim.UpdateCollisionAccess();
                if (i % 100 == 0)
                    Library.ReseedSeededRandom(i);
            }

            stopwatch.Stop();
            TimeSpan ts1 = stopwatch.Elapsed;
            stopwatch.Reset();
            Library.ReseedSeededRandom();

            Console.WriteLine("Running {0} loops with base method.", numLoops);
            stopwatch.Start();

            for (int i = 0; i < numLoops; i++)
            {
                baseSim.UpdateCollisionAccess();
                if (i % 100 == 0)
                    Library.ReseedSeededRandom(i);
            };

            stopwatch.Stop();
            TimeSpan ts2 = stopwatch.Elapsed;
            stopwatch.Reset();

            Console.WriteLine("Done.\nCandidate method:\t{0} ms\nBase method:\t\t{1} ms",
                (double)ts1.TotalMilliseconds / numLoops,
                (double)ts2.TotalMilliseconds / numLoops);
        }

        private class DiagnosticsMlEcoApp : MlEcoApp
        {
            public DiagnosticsMlEcoApp() : base()
            {
                simulation = new CandidateSimulation();
            }

            protected override void OnExpose(object sender, ExposeEventArgs args)
            {
                base.OnExpose(sender, args);
                if (simulation is CandidateSimulation)
                    base.DrawCaption("--- Candidate CollisionUpdate ---", 35*sUnit, 25*sUnit);
            }

            protected override void StartSimulationThread()
            {
                if (simulation != null && simulation.isRunning)
                    EndSimulation();
                simulation = new CandidateSimulation();

                simulationThread = new Thread(() => simulation.Run());
                simulationThread.Start();
            }
        }

        private class BaseSimulation : Simulation
        {
            public BaseSimulation(int _numCreatures, int _numFood) : base(_numCreatures, _numFood) { }

            public void UpdateCollisionAccess()
            {
                UpdateCollisions();
            }
        }


    }
}