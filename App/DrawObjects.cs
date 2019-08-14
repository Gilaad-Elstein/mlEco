using System;
using System.Linq;
using mlEco;
using static MlEco.Literals;

namespace MlEco
{
    partial class MlEcoApp
    {
        private void DrawCreatures()
        {
            foreach (Creature creature in simulation.Creatures)
            {
                Cairo.Context cr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);
              
                // Draw body
                DrawCircle(
                    simulation.reqMarkBestCreatures && creature.markBest ?
                                   creature.size * 15 : creature.size * 5,

                    creature.actionColor,
                    creature.baseColor,
                    creature.position,
                    creature.size);


                //Draw ready to mate tag
                if (creature.readyToMate)
                {
                    DrawCircle(
                               creature.size * 3,
                               new double[] { 0, 0, 0 },
                               new double[] { 1, 0, 0 },
                               creature.position,
                               0.3 * creature.size);
                }

                //Draw heading line
                cr.Translate(creature.position.x * Allocation.Width, creature.position.y * Allocation.Height);
                cr.LineWidth = creature.size * sUnit / 3;
                cr.SetSourceColor(BLACK);
                cr.MoveTo(0, 0);
                cr.LineTo(creature.size * sUnit * Math.Cos(creature.heading),
                          -creature.size * sUnit * Math.Sin(creature.heading));

                cr.Stroke();

                ((IDisposable)cr.GetTarget()).Dispose();
                ((IDisposable)cr).Dispose();
            }
        }

        private void DrawFood()
        {
            foreach (Food food in simulation.Foods)
            {
                DrawCircle(food.size * sUnit * 0.75,
                    FOOD_LINE_COLOR,
                    FOOD_FILL_COLOR,
                    food.position,
                    food.size);
            }
        }

        private void DrawFeedback()
        {
            if (!showInfo)
            {
                return;
            }
            DrawCaption("Creatures: " + simulation.Creatures.Count.ToString(), 2 * wUnit, 5 * hUnit);
            DrawCaption("Generation: " + simulation.generation.ToString(), 2 * wUnit, 10 * hUnit);
            DrawCaption("Tick: " + simulation.ticksElapsed.ToString(), 2 * wUnit, 15 * hUnit);
            DrawCaption(String.Format("Tick Rate: {0:0.} t/s", simulation.tickRateCounter.rate), 2 * wUnit, 20 * hUnit);
            DrawCaption(String.Format("Avrage Fitness: {0:0.}", simulation.GetAvarageFitness()), 2 * wUnit, 25 * hUnit);
            DrawCaption("Topology: " + string.Join(",", FC_TOPOLOGY.Select(x => x.ToString()).ToArray()), 2 * wUnit, 30 * hUnit);
        }

        private void DrawCircle(double lineWidth, double[] lineColor, double[] fillColor, Position position, double size)
        {
            Cairo.Context cr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);
            cr.SetSourceRGB(lineColor[0], lineColor[1], lineColor[2]);
            cr.LineWidth = lineWidth;
            cr.Translate(position.x * Allocation.Width, position.y * Allocation.Height);
            cr.Arc(0, 0, size * sUnit, 0, 2 * Math.PI);
            cr.StrokePreserve();
            cr.SetSourceRGB(fillColor[0], fillColor[1], fillColor[2]);
            cr.Fill();
            ((IDisposable)cr.GetTarget()).Dispose();
            ((IDisposable)cr).Dispose();
        }

        protected void DrawCaption(string text, double posX, double posY)
        {
            Cairo.Context texTcr = Gdk.CairoHelper.Create(drawingArea.GdkWindow);

            texTcr.SelectFontFace("", Cairo.FontSlant.Normal, Cairo.FontWeight.Bold);
            texTcr.SetFontSize(5 * sUnit);
            texTcr.MoveTo(posX, posY);
            texTcr.TextPath(text);
            texTcr.SetSourceRGB(1, 1, 1);
            texTcr.FillPreserve();
            texTcr.LineWidth = sUnit / 3;
            texTcr.SetSourceRGB(0, 0, 0);
            texTcr.Stroke();
            texTcr.Dispose();
            return;
        }
    }
}
