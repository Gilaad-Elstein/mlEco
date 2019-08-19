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
        private NeatAgent partner1;
        private NeatAgent partner2;
        private NeatAgent baby;
        private NeatAgent currentAgent;

        public TopographyViewerApp() : base("TopographyViewer")
        {
            SetAgents();

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

        private void SetAgents()
        {
            partner1 = new NeatAgent();
            partner2 = new NeatAgent();

            for (int i = 0; i < 15; i++)
            {
                partner1.ForceMutate();
                partner2.ForceMutate();
            }
            partner1.fitness = 10;

            baby = (NeatAgent)partner1.CrossOver(partner2);
            currentAgent = partner1;
        }

        private void OnKeyPress(object sender, KeyReleaseEventArgs args)
        {
            switch (args.Event.Key)
            {
                case Gdk.Key.Escape: 
                    Application.Quit();
                    break;
                case Gdk.Key.Key_1:
                    currentAgent = partner1;
                    drawingArea.QueueDraw();
                    break;
                case Gdk.Key.Key_2:
                    currentAgent = partner2;
                    drawingArea.QueueDraw();
                    break;
                case Gdk.Key.Key_3:
                    currentAgent = baby;
                    drawingArea.QueueDraw();
                    break;
                case Gdk.Key.R:
                case Gdk.Key.r:
                    SetAgents();
                    drawingArea.QueueDraw();
                    break;
                case Gdk.Key.space:
                    currentAgent.ActivateWithRandomInputs();
                    drawingArea.QueueDraw();
                    break;
                default:
                    Here(args.Event.Key);
                    break;
            }
        }

        protected virtual void OnExpose(object sender, ExposeEventArgs args)
        {
            for (int i=0; i < currentAgent.Connections.Count; i++)
            {
                if (!currentAgent.Connections[i].Expressed) { continue; }
                Cairo.Color color = new Cairo.Color(currentAgent.Connections[i].DrawColor[0],
                                                    currentAgent.Connections[i].DrawColor[1],
                                                    currentAgent.Connections[i].DrawColor[2]);
                DrawLine(
                    drawingArea,
                    Allocation.Width,
                    Allocation.Height,
                    Math.Abs(10 * currentAgent.Connections[i].Weight),
                    color,
                    currentAgent.Connections[i].InNode.DrawPosition,
                    currentAgent.Connections[i].OutNode.DrawPosition);
            }

            for (int i = 0; i < currentAgent.Nodes.Count; i++)
            {
                DrawCircle(
                    drawingArea,
                    Allocation.Width,
                    Allocation.Height,
                    2,
                    currentAgent.Nodes[i].Type == NodeGene.NodeType.Hidden ? new double[] { 0, 0, 0 } : new double[] { 1, 1, 1 },
                    currentAgent.Nodes[i].Type == NodeGene.NodeType.Hidden ? new double[] { 1, 1, 1 } : new double[] { 0, 0, 0 },
                    currentAgent.Nodes[i].DrawPosition,
                    2);
                DrawCaption(
                    drawingArea,
                    Allocation.Width,
                    Allocation.Height,
                    String.Format("{0:.##}", currentAgent.Nodes[i].value),
                    currentAgent.Nodes[i].DrawPosition.x - 0.035,
                    currentAgent.Nodes[i].DrawPosition.y + 0.02,
                    3);

            }
        }

    }
}
