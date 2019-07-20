using System;
using static MlEco.mlZoo;
using static MlEco.Library;
using static MlEco.Literals;
using System.Collections.Generic;
using System.Drawing;

namespace MlEco
{
    public class Creature : QuadTreeLib.IHasRect, ICollidable
    {
        public FCBrain brain;
        public Position position;
        public double heading;

        public double[] actionColor = new double[] { 0, 0, 0 };
        public double[] baseColor;
        public double size = INIT_CREATURES_SIZE;
        public RectangleF rectangle { get; set; }


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

        public bool keyboardCreature = false;

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

        public double[] GetSensory()
        {
            return new double[] { RandomDouble(), RandomDouble(), RandomDouble() };
        }

        public void Update()
        {
            UpdateMovement();
            rectangle = new RectangleF((float)position.x, (float)position.y, 1.5f * (float)size / 100, 1.5f * (float)ASPECT_RATIO * (float)size / 100);
            if (mating)
                actionColor = new double[] { 1, 0, 0 };
            else
                actionColor = new double[] { 0, 0, 0 };
 
            if (!keyboardCreature)
            {
                brain.Activate(GetSensory());
                Act(brain.GetOutputs());
            }
        }

        private void UpdateMovement()
        {
                if (turningLeft && !turningRight)
                    heading += 0.15;
                else if (turningRight && !turningLeft)
                    heading -= 0.15;

                if (movingFarward && !movingBackward)
                {
                    position.x += 0.01 * Math.Cos(heading);
                    position.y -= 0.01 * Math.Sin(heading) * ASPECT_RATIO;
                    foreach (double obstructedHeading in obstructedFromHeadings)
                    {
                        position.x -= 0.01 * Math.Cos(obstructedHeading);
                        position.y -= 0.01 * Math.Sin(obstructedHeading) * ASPECT_RATIO;
                    }
                }
                else if (movingBackward && !movingFarward)
                {
                    position.x -= 0.01 * Math.Cos(heading);
                    position.y += 0.01 * Math.Sin(heading);
                    foreach (double obstructedHeading in obstructedFromHeadings)
                    {
                        position.x -= 0.01 * Math.Cos(obstructedHeading);
                        position.y -= 0.01 * Math.Sin(obstructedHeading) * ASPECT_RATIO;
                    }
                }

                if (position.x > 1)
                    position.x = 1;
                if (position.y > 1)
                    position.y = 1;
                if (position.x < 0)
                    position.x = 0;
                if (position.y < 0)
                    position.y = 0;
        }

        public void CollideWith(ICollidable obstruction)
        {
            if (obstruction is Creature colidedCreature)
            {
                obstructedFromHeadings.Add(Math.Atan2(colidedCreature.position.y - position.y,
                                        colidedCreature.position.x - position.x));

                collidingCreatures.Add(colidedCreature);
            }

            //if (obstruction is Food food)
            //{

            //}
        }
    }
}
