using System;
namespace mlEco
{
    public class GuiButton
    {
        public int posX;
        public int posY;
        public string label;

        public GuiButton(int _posX, int _posY, string _label)
        {
            this.posX = _posX;
            this.posY = _posY;
            this.label = _label;
        }
    }
}
