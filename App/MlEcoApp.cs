﻿using System.Threading;
using Gtk;

namespace MlEco
{
    public partial class MlEcoApp : Window
    {
        private bool isFullscreen = false;

        protected Simulation simulation;
        protected Thread simulationThread;

        public MlEcoApp() : base("mlEco")
        {
            InitWindow();
            InitDrawables();
            InitGui();
            ShowAll();
            
            StartNewThreads();
            LoadSimulation();
        }

        private void InitWindow()
        {
            SetSizeRequest(720, 450);
            SetPosition(WindowPosition.Center);
            Resizable = false;
            DeleteEvent += delegate { Quit(); };
            ButtonPressEvent += ButtonPress;
            KeyPressEvent += KeyPress;
            KeyReleaseEvent += KeyRelease;
            AddEvents((int)Gdk.EventMask.ButtonPressMask);
        }

        private void StartNewThreads()
        {
            StartSimulationThread();
            StartDrawThread();
        }

        private void ToggleFullScreen()
        {
            if (!isFullscreen)
            {
                Resizable = true;
                GLib.Timeout.Add(10, delegate { Fullscreen(); return false; });
                GLib.Timeout.Add(1000, delegate { SetButtonBoxSize(); return false; });
                isFullscreen = true;
            }
            else
            {
                Unfullscreen();
                GLib.Timeout.Add(10, delegate { Resizable = false; return false; });
                isFullscreen = false;
                SetButtonBoxSize();
            }
        }

        public void Quit()
        {
            SaveSimulation();
            EndSimulation();
            Destroy();
            Application.Quit();
        }
    }
}
