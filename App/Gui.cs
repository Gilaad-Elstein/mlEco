using System;
using System.Collections.Generic;

namespace MlEco
{
    partial class MlEcoApp
    {
        private List<GuiButton> buttons = new List<GuiButton>();

        private void SetGui()
        {
            buttons.Clear();
            SetScreenUnits();
            buttons.Add(new GuiToggleButton(75 * wUnit, 5 * hUnit, "Keep Best",
                                            new System.Action(EnableKeepBest),
                                            new System.Action(DisableKeepBest)));
        }

        public class GuiButton
        {
            public double posX;
            public double posY;
            public string label;
            public Action action;

            public GuiButton(double _posX, double _posY, string _label, Action _action)
            {
                this.posX = _posX;
                this.posY = _posY;
                this.label = _label;
                this.action = _action;
            }

            public void Enable() { action(); }
        }

        public class GuiToggleButton : GuiButton
        {
            public Action disableAction;

            public GuiToggleButton(double _posX, double _posY,
                            string _label,
                            Action _action, Action _disableAction) :
                            base(_posX, _posY, _label, _action)
            {
                disableAction = _disableAction;
            }

            public void Disable() { disableAction(); }
        }
    }
}
