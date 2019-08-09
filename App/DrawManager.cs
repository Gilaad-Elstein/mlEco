using System;
using System.Threading;
using Gtk;
using static MlEco.Literals;

namespace MlEco
{
    partial class MlEcoApp
    {
        private double wUnit;
        private double hUnit;
        protected double sUnit;

        private DrawingArea drawingArea;
        private uint drawTimerID;
        private Thread DrawThread;

        private void InitDrawables()
        {
            drawingArea = new DrawingArea();
            drawingArea.WidthRequest = 720;
            drawingArea.HeightRequest = 450;
            drawingArea.ExposeEvent += OnExpose;
            drawingArea.ModifyBg(Gtk.StateType.Normal, new Gdk.Color(250, 250, 250));

            //Add(drawingArea);
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

            if (simulation.msPerTick != 0)
            {
                DrawFood();
                DrawCreatures();
            }
            DrawFeedback();
            DrawGui();
            simulation.drawLock = false;
        }

        private void DrawGui()
        {
        }

        private void SetScreenUnits()
        {
            wUnit = Allocation.Width / 100.0;
            hUnit = Allocation.Height / 100.0;
            sUnit = Allocation.Width < Allocation.Height ? wUnit : hUnit;
        }
    }
}
