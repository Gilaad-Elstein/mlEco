using System;
using Gtk;

namespace MlEco
{
    partial class MlEcoApp
    {
        protected void ButtonPress(object sender, ButtonPressEventArgs args)
        {
            Library.Here();
        }

        [GLib.ConnectBefore]
        protected void KeyRelease(object sender, KeyReleaseEventArgs args)
        {

            switch (args.Event.Key)
            {
                case Gdk.Key.Escape:
                    Quit();
                    break;
                case Gdk.Key.F:
                    ToggleFullScreen();
                    break;
                case Gdk.Key.f:
                    ToggleTickRate();
                    break;

                case Gdk.Key.R:
                case Gdk.Key.r:
                    StartNewThreads();
                    break;
                case Gdk.Key.K:
                case Gdk.Key.k:
                    ToggleKeepBest();
                    break;
            }
            if (simulation.keyboardCreatureEnabled)
            {
                switch (args.Event.Key)
                {
                    case Gdk.Key.Up:
                        simulation.keyboardCreature.movingFarward = false;
                        break;
                    case Gdk.Key.Down:
                        simulation.keyboardCreature.movingBackward = false;
                        break;
                    case Gdk.Key.Left:
                        simulation.keyboardCreature.turningLeft = false;
                        break;
                    case Gdk.Key.Right:
                        simulation.keyboardCreature.turningRight = false;
                        break;
                    case Gdk.Key.space:
                        simulation.keyboardCreature.mating = false;
                        break;
                }
            }

        }

        [GLib.ConnectBefore]
        protected void KeyPress(object sender, KeyPressEventArgs args)
        {
            if (simulation.keyboardCreatureEnabled)
            {
                switch (args.Event.Key)
                {
                    case Gdk.Key.Up:
                        simulation.keyboardCreature.movingFarward = true;
                        break;
                    case Gdk.Key.Down:
                        simulation.keyboardCreature.movingBackward = true;
                        break;
                    case Gdk.Key.Left:
                        simulation.keyboardCreature.turningLeft = true;
                        break;
                    case Gdk.Key.Right:
                        simulation.keyboardCreature.turningRight = true;
                        break;
                    case Gdk.Key.space:
                        simulation.keyboardCreature.mating = true;
                        break;
                }
            }
        }
    }
}
