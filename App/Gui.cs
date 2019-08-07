using System;
using System.Collections.Generic;
using Gtk;

namespace MlEco
{
    partial class MlEcoApp
    {
        Gtk.HBox mainContainer = new HBox();
        Gtk.VButtonBox guiContainer = new VButtonBox();

        private void InitGui()
        {
            guiContainer.LayoutStyle = ButtonBoxStyle.Start;
            guiContainer.Spacing = 2;
            ToggleButton buttonFastForward = new ToggleButton("FastForward");
            ToggleButton buttonKeepBest = new ToggleButton("Keep best");

            
            mainContainer.Add(drawingArea);
            //mainContainer.Add(guiContainer);
            guiContainer.Add(buttonFastForward);
            guiContainer.Add(buttonKeepBest);
            SetButtonBoxSize();

            Add(mainContainer);
        }

        private void SetButtonBoxSize()
        {

            //guiContainer.SetChildSize(300,100);

        }
    }
}
