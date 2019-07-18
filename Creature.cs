using System;
using static MlEco.mlZoo;
using static MlEco.Library;
using static MlEco.Literals;
using System.Collections.Generic;

namespace MlEco
{
    public class Creature
    {
        public FCBrain brain;
        public Position position;
        public double heading;

        public double[] actionColor = new double[] { 0, 0, 0 };
        public double[] baseColor;
        public double size = 1.5;

        public bool movingFarward = false;
        public bool movingBackward = false;
        public bool turningLeft = false;
        public bool turningRight = false;
        public bool mating = false;

        public int lastMatedAtTick = 0;
        public bool readyToMate = false;

        public List<Creature> proximateCreatures = new List<Creature>();
        public List<Creature> collidingCreatures = new List<Creature>();
        public List<double> obstructedFromHeadings = new List<double>();

        public readonly bool keyboardCreature = false;

        public Creature(FCBrain fCBrain, Position position)
        {
            brain = fCBrain;
            this.position = position;
            heading = RandomDouble() * 2 * Math.PI;
            baseColor = new double[] { RandomDouble(), RandomDouble(), RandomDouble() } ;
        }

        public Creature() : this(new FCBrain(Simulation.topology), new Position(0.5, 0.5))
        {
            this.keyboardCreature = true;
        }

        public void Act(double[] outputs)
        {
            movingFarward = outputs[0] > 0 ? true : false;
            movingBackward = outputs[1] > 0 ? true : false;
            turningLeft = outputs[2] > 0 ? true : false;
            turningRight = outputs[3] > 0 ? true : false;
            mating = outputs[4] > 0 ? true : false;
        }

        //remove method after simulation class implements set creture sensory
        public double[] GetSensory()
        {
            return new double[] { RandomDouble(), RandomDouble(), RandomDouble() };
        }

        public bool ProximateTo(Creature obstruction, double distance)
        {
            double creatureSizeSquaredSum =
                Math.Pow(ASPECT_RATIO * (position.x - obstruction.position.x), 2) +
                Math.Pow((position.y - obstruction.position.y), 2);

            double distanceSquaredSum = distance * (Math.Pow(size / 100.0, 2) + Math.Pow(obstruction.size / 100.0, 2));

            if (creatureSizeSquaredSum < distanceSquaredSum)
                return true;
            else
                return false;
        }
    }
}
