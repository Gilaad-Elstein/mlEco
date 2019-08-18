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

        public TopographyViewerApp() : base("TopographyViewer")
        {
            agent = new NeatAgent();

            SetSizeRequest(720, 450);
            SetPosition(WindowPosition.Center);
            Resizable = false;
            DeleteEvent += delegate { Application.Quit(); };
            //ButtonPressEvent += ButtonPress;
            //KeyPressEvent += KeyPress;
            KeyReleaseEvent += OnKeyPress;
            AddEvents((int)Gdk.EventMask.ButtonPressMask);

            drawingArea = new DrawingArea();
            drawingArea.WidthRequest = 720;
            drawingArea.HeightRequest = 450;
            drawingArea.ModifyBg(Gtk.StateType.Normal, new Gdk.Color(125, 125, 125));
            drawingArea.ExposeEvent += OnExpose;

            Add(drawingArea);

            ShowAll();
        }

        private void OnKeyPress(object sender, KeyReleaseEventArgs args)
        {
            switch (args.Event.Key)
            {
                case Gdk.Key.Escape: 
                    Application.Quit();
                    break;
                case Gdk.Key.space:
                    agent.ForceMutate(1);
                    drawingArea.QueueDraw();
                    break;
                case Gdk.Key.Return:
                    agent.ForceMutate(2);
                    drawingArea.QueueDraw();
                    break;
                case Gdk.Key.R:
                case Gdk.Key.r:
                    agent = new NeatAgent();
                    drawingArea.QueueDraw();
                    break;
            }
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
                    agent.Nodes[i].Type == NodeGene.NodeType.Hidden ? new double[] { 0, 0, 0 } : new double[] { 1, 1, 1 },
                    agent.Nodes[i].Type == NodeGene.NodeType.Hidden ? new double[] { 1, 1, 1 } : new double[] { 0, 0, 0 },
                    agent.Nodes[i].DrawPosition, 
                    2);
            }

            for (int i=0; i < agent.Connections.Count; i++)
            {
                if (!agent.Connections[i].Expressed) { continue; }

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
