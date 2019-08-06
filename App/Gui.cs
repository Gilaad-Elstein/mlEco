using System;
using System.Collections.Generic;
using Gtk;

namespace MlEco
{
    partial class MlEcoApp
    {
        Gtk.HBox mainContainer = new HBox();
        Gtk.VBox guiContainer = new VBox();

        private void InitGui()
        {
            ToggleButton buttonFastForward = new ToggleButton("FastForward");
            ToggleButton buttonKeepBest = new ToggleButton("Keep best");

            drawingArea.WidthRequest = 720;
            drawingArea.HeightRequest = 450;
            mainContainer.Add(drawingArea);
            mainContainer.Add(guiContainer);
            guiContainer.Add(buttonFastForward);
            guiContainer.Add(buttonKeepBest);

            Add(mainContainer);
        }
    }
}
