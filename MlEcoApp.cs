using System;
using System.Threading;
using Gtk;
using static MlEco.Literals;
using static MlEco.Library;

namespace MlEco
{
    partial class MlEcoApp : Window
    {
        private bool isFullscreen = false;
        private double wUnit;
        private double hUnit;
        protected double sUnit;

        private DrawingArea drawingArea;
        private uint drawTimerID;
        private Thread DrawThread;

        protected Simulation simulation;
        protected Thread simulationThread;

        public MlEcoApp() : base("mlEco")
        {
            InitWindow();
            InitDrawingArea();

            ShowAll();

            StartNewThreads();
        }

        private void InitWindow()
        {
            SetSizeRequest(720, 450);
            SetPosition(WindowPosition.Center);
            Resizable = false;

            DeleteEvent += delegate { Quit(); };
            KeyReleaseEvent += KeyRelease;
            KeyPressEvent += KeyPress;
        }

        private void InitDrawingArea()
        {
            drawingArea = new DrawingArea();
            drawingArea.ExposeEvent += OnExpose;
            Add(drawingArea);
        }

        private void StartNewThreads()
        {
            StartSimulationThread();
            StartDrawThread();
        }

        protected virtual void StartSimulationThread()
        {
            if (simulation != null && simulation.isRunning)
                EndSimulation();
            simulation = new Simulation();

            simulationThread = new Thread(() => simulation.Run());
            simulationThread.Start();
        }

        private void StartDrawThread()
        {
            if (DrawThread != null)
            {
                GLib.Source.Remove(drawTimerID);
            }
            DrawThread = new Thread(() => drawTimerID =
                                     GLib.Timeout.Add((uint)SLOW_TICK_RATE,
                                                                  Redraw));
            DrawThread.Start();
        }

        private bool Redraw()
        {
            while (simulation.updateLock)
            {
                continue;
            }
            drawingArea.QueueDraw();
            return true;
        }

        protected virtual void OnExpose(object sender, ExposeEventArgs args)
        {
        
            simulation.drawLock = true;
            while (simulation.updateLock)
            {
                continue;
            }

            SetScreenUnits();

            DrawFood();
            DrawCreatures();
            DrawText();

            simulation.drawLock = false;
        }

        private void DrawCreatures()
        {
            foreach (Creature creature in simulation.Creatures)
            {
                Cairo.Context cr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);

                // Draw body
                DrawCircle(creature.size * 5, 
                    creature.actionColor, 
                    creature.baseColor, 
                    creature.position, 
                    creature.size);

                //Draw ready to mate tag
                if (creature.readyToMate)
                {
                    DrawCircle(creature.size * 3,
                               new double[] { 0, 0, 0 },
                               new double[] { 1, 0, 0 },
                               creature.position,
                               0.5 * creature.size);
                }

                //Draw heading line
                cr.Translate(creature.position.x * Allocation.Width, creature.position.y * Allocation.Height);
                cr.LineWidth = creature.size * sUnit / 3;
                cr.SetSourceColor(BLACK);
                cr.MoveTo(0, 0);
                cr.LineTo(creature.size * sUnit * Math.Cos(creature.heading),
                          -creature.size * sUnit * Math.Sin(creature.heading));
                cr.Stroke();

                ((IDisposable)cr.GetTarget()).Dispose();
                ((IDisposable)cr).Dispose();
            }
        }

        private void DrawFood()
        {
            foreach(Food food in simulation.Foods)
            {
                DrawCircle(food.size * sUnit * 0.75,
                    FOOD_LINE_COLOR,
                    FOOD_FILL_COLOR,
                    food.position,
                    food.size);
            }
        }

        private void DrawText()
        {
            DrawCaption("Creatures: " + simulation.Creatures.Count.ToString(), 2 * wUnit, 5 * hUnit);
            DrawCaption("Tick: " + simulation.ticksElapsed.ToString(), 2 * wUnit, 10 * hUnit);
            DrawCaption(String.Format("Tick Rate: {0:0.} t/s", simulation.tickRateCounter.rate), 2 * wUnit, 15 * hUnit);
        }

        private void DrawCircle(double lineWidth, double[] lineColor, double[] fillColor, Position position, double size)
        {
            Cairo.Context cr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);
            cr.SetSourceRGB(lineColor[0], lineColor[1], lineColor[2]);
            cr.LineWidth = lineWidth;
            cr.Translate(position.x * Allocation.Width, position.y * Allocation.Height);
            cr.Arc(0, 0, size * sUnit, 0, 2 * Math.PI);
            cr.StrokePreserve();
            cr.SetSourceRGB(fillColor[0], fillColor[1], fillColor[2]);
            cr.Fill();
            ((IDisposable)cr.GetTarget()).Dispose();
            ((IDisposable)cr).Dispose();
        }

        protected void DrawCaption(string text, double posX, double posY)
        {
            Cairo.Context texTcr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);

            texTcr.SelectFontFace("", Cairo.FontSlant.Normal, Cairo.FontWeight.Bold);
            texTcr.SetFontSize(5 * sUnit);
            texTcr.MoveTo(posX, posY);
            texTcr.TextPath(text);
            texTcr.SetSourceRGB(1, 1, 1);
            texTcr.FillPreserve();
            texTcr.LineWidth = sUnit / 3;
            texTcr.SetSourceRGB(0, 0, 0);
            texTcr.Stroke();
            texTcr.Dispose();
            return;
        }

        private void SetScreenUnits()
        {
            wUnit = Allocation.Width / 100.0;
            hUnit = Allocation.Height / 100.0;
            sUnit = Allocation.Width < Allocation.Height ? wUnit : hUnit;
        }

        private void ToggleFullScreen()
        {
            if (!isFullscreen)
            {
                Resizable = true;
                GLib.Timeout.Add(10, delegate { Fullscreen(); return false; });
                isFullscreen = true;
            }
            else
            {
                Unfullscreen();
                GLib.Timeout.Add(10, delegate { Resizable = false; return false; });
                isFullscreen = false;
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

        public void Quit()
        {
            EndSimulation();
            Destroy();
            Application.Quit();
        }
    }
}
