using System;
using System.Linq;
using static MlEco.Literals;
using static MlEco.Library;


namespace MlEco
{
    partial class MlEcoApp
    {
        private void DrawCreatures()
        {
            foreach (Creature creature in simulation.Creatures)
            {              
                // Draw body
                DrawCircle(
                    drawingArea,
                    Allocation.Width,
                    Allocation.Height,
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
                       drawingArea,
                       Allocation.Width,
                       Allocation.Height,
                       creature.size * 3,
                       new double[] { 0, 0, 0 },
                       new double[] { 1, 0, 0 },
                       creature.position,
                       0.3 * creature.size);
                }

                //Draw heading line
                DrawLine(
                        drawingArea,
                        Allocation.Width,
                        Allocation.Height,
                        creature.size,
                        BLACK,
                        creature.position,
                        new Position(creature.size  * Math.Cos(creature.heading ) / 100,
                              -creature.size * Math.Sin(creature.heading) * ASPECT_RATIO / 100),
                        creature.heading

                    );
            }
        }

        private void DrawFood()
        {
            foreach (Food food in simulation.Foods)
            {
                DrawCircle(
                    drawingArea,
                    Allocation.Width,
                    Allocation.Height,
                    food.size * sUnit * 0.50,
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
            DrawCaption( drawingArea, Allocation.Width, Allocation.Height, "Creatures: " + simulation.Creatures.Count.ToString(), 2 * wUnit, 7 * hUnit);
            DrawCaption( drawingArea, Allocation.Width, Allocation.Height, "Generation: " + simulation.generation.ToString(), 2 * wUnit, 14 * hUnit);
            DrawCaption( drawingArea, Allocation.Width, Allocation.Height, "Tick: " + simulation.ticksElapsed.ToString(), 2 * wUnit, 21 * hUnit);
            DrawCaption( drawingArea, Allocation.Width, Allocation.Height, String.Format("Tick Rate: {0:0.} t/s", simulation.tickRateCounter.rate), 2 * wUnit, 28* hUnit);
            DrawCaption( drawingArea, Allocation.Width, Allocation.Height, String.Format("Avrage Fitness: {0:0.}", simulation.GetAvarageFitness()), 2 * wUnit, 35 * hUnit);
            DrawCaption( drawingArea, Allocation.Width, Allocation.Height, String.Format("Simulation type: {0}", SIMULATION_TYPE), 2 * wUnit, 42* hUnit);
            if (SIMULATION_TYPE == SimulationType.FullyConnected)
            {
                DrawCaption( drawingArea, Allocation.Width, Allocation.Height, "Topology: " + string.Join(",", FC_TOPOLOGY.Select(x => x.ToString()).ToArray()), 2 * wUnit, 49 * hUnit);
            }
        }
    }
}
