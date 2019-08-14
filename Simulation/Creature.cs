using System;
using static MlEco.mlZoo;
using static MlEco.Library;
using static MlEco.Literals;
using System.Collections.Generic;
using System.Drawing;
using mlEco;

namespace MlEco
{
    [Serializable]
    public class Creature : SimulationObject, ICollidable, IComparable
    {
        public Agent agent;
        private double _heading;
        public double heading { get { return _heading; } set { _heading = RangeTwoPI(value); } }
        public double energy = INIT_CREATURE_ENERGY;
        public bool isAlive = true;
        public int lifeTime = 0;
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
        internal bool markBest = false;

        public Creature(Position position)
        {
            switch (AGENT_TYPE)
            {
                case AgentType.FCAgent:
                    agent = new FCAgent(FC_TOPOLOGY);
                    break;

                case AgentType.NeatAgent:
                    agent = new NeatAgent();
                    break;
            }
            this.position = position;
            this.size = INIT_CREATURES_SIZE;
            heading = RandomDouble() * 2 * Math.PI;
            baseColor = new double[] { RandomDouble(), RandomDouble(), RandomDouble() };
            SensoryGroup = new List<ICollidable>();
        }

        public Creature(Agent _agent, Position position) : this(position) { agent = _agent; }


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
            double input2 = 0;
            double input3 = readyToMate ? 1 : -1;
            bool foundFood = false;
            bool foundCreature = false;
            if (SensoryGroup.Count > 0)
            {
                for (int i = 0; i < SensoryGroup.Count; i++)
                {
                    if (SensoryGroup[i] is Food && !foundFood)
                    {
                        double angle = AngleTo(SensoryGroup[i]);
                        double sortedHeading = twoPi - heading;
                        input1 = (angle - sortedHeading) / twoPi;
                        foundFood = true;
                    }
                    else if(SensoryGroup[i] is Creature && !foundCreature)
                    {
                        double angle = AngleTo(SensoryGroup[i]);
                        double sortedHeading = twoPi - heading;
                        input2 = (angle - sortedHeading) / twoPi;
                        foundCreature = true;
                    }
                    if (foundFood && foundCreature) { break; }
                }
            }
            return new double[] { input1, input2, input3 };
        }

        public void Update()
        {
            energy -= 1;
            lifeTime++;
            if (mating) { energy -= 2; }
            if (!keyboardCreature) isAlive &= (energy > 0 && lifeTime <= CREATURE_MAX_LIFESPAN);
            UpdateMovement();
            rectangle = new RectangleF((float)position.x, (float)position.y, 1.5f * (float)size / 100, 1.5f * (float)ASPECT_RATIO * (float)size / 100);
            if (mating)
                actionColor = new double[] { 1, 0, 0 };
            else
                actionColor = new double[] { 0, 0, 0 };

            agent.Activate(GetSensory());
            if (!keyboardCreature)
            {
                Act(agent.GetOutputs());
            }
        }

        private void UpdateMovement()
        {
                if (turningLeft && !turningRight)
            {
                energy -= 0.1;
                heading += 0.15;
            }
            else if (turningRight && !turningLeft)
            {
                energy -= 0.1;
                heading -= 0.15;
            }

            if (movingFarward && !movingBackward)
                {
                energy -= 0.1;
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
                energy -= 0.1;
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
                fitness += 10;
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
