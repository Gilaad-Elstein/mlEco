using System;
using Gtk;
using static MlEco.mlZoo;
using MlEco;
using static MlEco.mlZoo.NeatAgent;

namespace MlEco
{
    public class TopographyViewerApp : Window
    {
        private DrawingArea drawingArea;
        private NeatAgent agent;

        public TopographyViewerApp(NeatAgent _agent) : base("TopographyViewer")
        {
            this.agent = _agent;

            SetSizeRequest(720, 450);
            SetPosition(WindowPosition.Center);
            Resizable = false;
            DeleteEvent += delegate { Application.Quit(); };
            //ButtonPressEvent += ButtonPress;
            //KeyPressEvent += KeyPress;
            KeyReleaseEvent += delegate (object sender, KeyReleaseEventArgs args)
                { if (args.Event.Key == Gdk.Key.Escape) { Application.Quit(); } };
            AddEvents((int)Gdk.EventMask.ButtonPressMask);

            drawingArea = new DrawingArea();
            drawingArea.WidthRequest = 720;
            drawingArea.HeightRequest = 450;
            drawingArea.ModifyBg(Gtk.StateType.Normal, new Gdk.Color(125, 125, 125));
            drawingArea.ExposeEvent += OnExpose;

            Add(drawingArea);

            ShowAll();
        }

        protected virtual void OnExpose(object sender, ExposeEventArgs args)
        {
            for (int i=0; i < NUM_INPUTS; i++)
            {
                DrawCircle(2, new double[] { 1, 1, 1 }, new double[] { 0, 0, 0 }, new Position(0.1, (i+0.5)/NUM_INPUTS), 0.03);
            }

            for (int i = 0; i < NUM_OUTPUTS; i++)
            {
                DrawCircle(2, new double[] { 1, 1, 1 }, new double[] { 0, 0, 0 }, new Position(0.9, (i + 0.5) / NUM_OUTPUTS), 0.03);
            }
        }

        private void DrawCircle(double lineWidth, double[] lineColor, double[] fillColor, Position position, double size)
        {
            Cairo.Context cr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);
            cr.SetSourceRGB(lineColor[0], lineColor[1], lineColor[2]);
            cr.LineWidth = lineWidth;
            cr.Translate(position.x * Allocation.Width, position.y * Allocation.Height);
            cr.Arc(0, 0, size * Allocation.Width, 0, 2 * Math.PI);
            cr.StrokePreserve();
            cr.SetSourceRGB(fillColor[0], fillColor[1], fillColor[2]);
            cr.Fill();
            ((IDisposable)cr.GetTarget()).Dispose();
            ((IDisposable)cr).Dispose();
        }

    }
}
