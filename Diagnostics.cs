using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using Gtk;
using static MlEco.Literals;
using QuadTreeLib;
using System.Drawing;

namespace MlEco
{
    public static class Diagnostics
    {
        public static void Run()
        {
            Library.diagnosticsMode = true;

            RunAppInDiagnosticsMode();
            CompareCollisionAlgo(100);


            return;
        }

        private static void RunAppInDiagnosticsMode()
        {
            Gtk.Application.Init();
            DiagnosticsMlEcoApp app = new DiagnosticsMlEcoApp();
            Gtk.Application.Run();
        }

        public class CandidateSimulation : Simulation
        {
            private readonly int numSegements = 20;

            public CandidateSimulation(int maxCreatures) : base() { this.maxCreatures = maxCreatures; }

            public CandidateSimulation() : base() { }

            public void UpdateCollisionAccessor() { UpdateCollisions(); }

            private void ClearCreatureCollisions()
            {
                foreach (Creature creature in Creatures)
                {
                    creature.obstructedFromHeadings.Clear();
                    creature.collidingCreatures.Clear();
                    creature.proximateCreatures.Clear();
                }
            }


        }

        public static void CompareCollisionAlgo(int numLoops)
        {
            CandidateSimulation DiagSim = new CandidateSimulation(100);
            BaseSimulation baseSim = new BaseSimulation(100);

            Console.WriteLine($"Running {numLoops} loops with candidate method.");

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();

            for (int i = 0; i < numLoops; i++)
            {
                DiagSim.UpdateCollisionAccessor();
                if (i % 10 == 0)
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

        private class BaseSimulation : Simulation
        {
            public BaseSimulation(int maxCreatures) : base() {this.maxCreatures = maxCreatures;}

            public void UpdateCollisionAccess()
            {
                UpdateCollisions();
            }
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
                string caption = simulation is CandidateSimulation ? "Candidate" : "Base";
                base.DrawCaption(caption, 70 * sUnit, 85 * sUnit);
            }

            protected override void StartSimulationThread()
            {
                if (simulation != null && simulation.isRunning)
                    EndSimulation();

                simulation = simulation is CandidateSimulation ?
                    new Simulation() : new CandidateSimulation();

                simulationThread = new Thread(() => simulation.Run());
                simulationThread.Start();
            }
        }

    }
}