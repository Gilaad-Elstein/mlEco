﻿using System;
using static MlEco.mlZoo;
using static MlEco.Library;
using static MlEco.Literals;
using System.Collections.Generic;
using System.Drawing;
using mlEco;

namespace MlEco
{
    public class Creature : SimulationObject, ICollidable, IComparable
    {
        public static int[] topology = new int[] { 1, 2, 5 };
        public FCBrain brain;
        private double _heading;
        public double heading { get { return _heading; } set { _heading = RangeTwoPI(value); } }
        public int energy = INIT_CREATURE_ENERGY;
        public bool isAlive = true;
        public int fitness = 0;
        public List<ICollidable> SensoryGroup { get; internal set; }
        public int lastMatedAtTick = 0;
        public bool readyToMate = false;
        public List<Creature> proximateCreatures = new List<Creature>();
        public List<Creature> collidingCreatures = new List<Creature>();
        public List<double> obstructedFromHeadings = new List<double>();
        public double[] actionColor = new double[] { 0, 0, 0 };
        public double[] baseColor;

        public bool movingFarward = false;
        public bool movingBackward = false;
        public bool turningLeft = false;
        public bool turningRight = false;
        public bool mating = false;

        public bool keyboardCreature = false;

        public Creature(Position position)
        {
            brain = new FCBrain(topology);
            this.position = position;
            this.size = INIT_CREATURES_SIZE;
            heading = RandomDouble() * 2 * Math.PI;
            baseColor = new double[] { RandomDouble(), RandomDouble(), RandomDouble() };
            SensoryGroup = new List<ICollidable>();
        }

        public Creature(FCBrain fCBrain, Position position) : this(position) { brain = fCBrain; }


        public Creature() : this(new Position(0.5, 0.5))
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
            double input1 = 0;
            if (SensoryGroup.Count > 0)
            {
                for (int i = 0; i < SensoryGroup.Count; i++)
                {
                    if (SensoryGroup[i] is Food)
                    {
                        double angle = AngleTo(SensoryGroup[i]);
                        double sortedHeading = twoPi - heading;
                        input1 = (angle - sortedHeading) / twoPi;
                        break;
                    }
                }
            }
            return new double[] { input1 };
        }

        public void Update()
        {
            energy--;
            if (!keyboardCreature) isAlive &= energy != 0;
            UpdateMovement();
            rectangle = new RectangleF((float)position.x, (float)position.y, 1.5f * (float)size / 100, 1.5f * (float)ASPECT_RATIO * (float)size / 100);
            if (mating)
                actionColor = new double[] { 1, 0, 0 };
            else
                actionColor = new double[] { 0, 0, 0 };

            brain.Activate(GetSensory());
            if (!keyboardCreature)
            {
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
                    position = new Position(position.x + 0.01 * Math.Cos(heading),
                               position.y - 0.01 * Math.Sin(heading) * ASPECT_RATIO);
                    
                    foreach (double obstructedHeading in obstructedFromHeadings)
                    {
                        position = new Position(position.x - 0.01 * Math.Cos(obstructedHeading),
                                                position.y - 0.01 * Math.Sin(obstructedHeading) * ASPECT_RATIO);
                    }
                }
                else if (movingBackward && !movingFarward)
                {
                    position = new Position(position.x - 0.01 * Math.Cos(heading),
                               position.y + 0.01 * Math.Sin(heading));
                    foreach (double obstructedHeading in obstructedFromHeadings)
                    {
                        position = new Position(position.x - 0.01 * Math.Cos(obstructedHeading),
                                                position.y - 0.01 * Math.Sin(obstructedHeading) * ASPECT_RATIO);
                    }
                }

                if (position.x > 1)
                    position = new Position(1, position.y);
                if (position.y > 1)
                    position = new Position(position.x, 1);
                if (position.x < 0)
                    position = new Position(0, position.y);
                if (position.y < 0)
                    position = new Position(position.x, 0);
        }

        public void CollideWith(ICollidable obstruction)
        {
            if (obstruction is Creature colidedCreature)
            {
                obstructedFromHeadings.Add(AngleTo(colidedCreature));

                collidingCreatures.Add(colidedCreature);
            }

            if (obstruction is Food food)
            {
                energy += food.energy;
                fitness++;
            }
        }

        public int CompareTo(object otherCreature)
        {
            if (!(otherCreature is Creature))
                throw new InvalidOperationException();
            Creature castOtherCreature = (Creature)otherCreature;
            return this.fitness.CompareTo(castOtherCreature.fitness);
        }

    }
}
