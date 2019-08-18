using System;
using Gtk;
using static MlEco.mlZoo;
using static MlEco.mlZoo.NeatAgent;
using static MlEco.Library;


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
                DrawCircle(
                    drawingArea, 
                    Allocation.Width, 
                    Allocation.Height, 
                    2, 
                    new double[] { 1, 1, 1 }, 
                    new double[] { 0, 0, 0 }, 
                    new Position(0.1, 
                    (i+0.5)/NUM_INPUTS), 2);
            }

            for (int i = 0; i < NUM_OUTPUTS; i++)
            {
                DrawCircle(
                    drawingArea, 
                    Allocation.Width, 
                    Allocation.Height, 
                    2, 
                    new double[] { 1, 1, 1 }, 
                    new double[] { 0, 0, 0 }, 
                    new Position(0.9, (i + 0.5) / NUM_OUTPUTS), 
                    2);
            }
        }

    }
}
