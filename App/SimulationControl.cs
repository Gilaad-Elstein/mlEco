using System;
using System.Threading;
using static MlEco.Literals;
using static MlEco.Library;

namespace MlEco
{
    partial class MlEcoApp
    {
        public void SaveSimulation()
        {
            while (simulation.updateLock)
            {
                continue;
            }
            simulation.drawLock = true;
            Save(simulation);
            simulation.drawLock = false;
        }

        public void LoadSimulation()
        {
            simulation.RequestEnd();
            simulationThread.Join();
            simulation = Load();
            simulationThread = new Thread(() => simulation.Run());
            simulationThread.Start();
        }

        private void DisableFastForward()
        {
            Console.WriteLine("Disable");
        }

        private void EnableFastForward()
        {
            Console.WriteLine("Enable");
        }

        protected virtual void StartSimulationThread()
        {
            if (simulation != null && simulation.isRunning)
                EndSimulation();
            simulation = GetNewSimulation();

            simulationThread = new Thread(() => simulation.Run());
            simulationThread.Start();
        }

        internal static Simulation GetNewSimulation()
        {
            switch (SIMULATION_TYPE)
            {
                case SimulationType.FullyConnected:
                    return new FCSimulation();
                case SimulationType.NEAT:
                    return new NEATSimulation();
                default:
                    return new FCSimulation();
            }
        }

        private void ToggleTickRate()
        {
            if (simulation.msPerTick == SLOW_TICK_RATE)
            {
                simulation.msPerTick = 0;
                GLib.Source.Remove(drawTimerID);
                DrawThread = new Thread(() => drawTimerID =
                                     GLib.Timeout.Add((uint)FAST_DRAW_RATE,
                                                                  Redraw));
                DrawThread.Start();
            }
            else
            {
                simulation.msPerTick = SLOW_TICK_RATE;
                GLib.Source.Remove(drawTimerID);
                DrawThread = new Thread(() => drawTimerID =
                                     GLib.Timeout.Add((uint)SLOW_DRAW_RATE,
                                                                  Redraw));
                DrawThread.Start();
            }
        }

        protected void EndSimulation()
        {
            GLib.Source.Remove(drawTimerID);
            simulation.RequestEnd();
            simulationThread.Join();
        }
    }
}
