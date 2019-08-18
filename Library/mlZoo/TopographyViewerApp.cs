using System;
using Gtk;
using static MlEco.mlZoo;
using static MlEco.mlZoo.NeatAgent;
using static MlEco.Library;
using static MlEco.Literals;


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
            KeyReleaseEvent += delegate(object sender, KeyReleaseEventArgs args)
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
            for (int i=0; i < agent.Nodes.Count; i++)
            {
                DrawCircle(
                    drawingArea, 
                    Allocation.Width, 
                    Allocation.Height, 
                    2, 
                    new double[] { 1, 1, 1 }, 
                    new double[] { 0, 0, 0 }, 
                    agent.Nodes[i].DrawPosition, 
                    2);
            }

            for (int i=0; i < agent.Connections.Count; i++)
            {
                DrawLine(
                    drawingArea,
                    Allocation.Width,
                    Allocation.Height,
                    2,
                    BLACK,
                    agent.Connections[i].InNode.DrawPosition,
                    agent.Connections[i].OutNode.DrawPosition);
            }
        }

    }
}
