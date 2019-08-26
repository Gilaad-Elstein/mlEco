using System;
using MlEco;
using static MlEco.NeatAgent;

namespace mlEco.Library.mlZoo.Neat
{
    internal class NodeGene
    {
        internal readonly int Index;
        internal NodeType Type;
        internal double value;
        internal Position DrawPosition;

        internal NodeGene(NodeType type, int index)
        {
            if (type == NodeType.Hidden)
            {
                throw new ArgumentException("Cannot construct hidden node without DrawPosistion");
            }

            this.Type = type;
            this.Index = index;
            if (Type == NodeType.Sensor)
            {
                DrawPosition = new Position(0.1, (double)(index + 0.5) / NUM_INPUTS);
            }
            else if (Type == NodeType.Output)
            {
                DrawPosition = new Position(0.9, (double)(index + 0.5 - NUM_INPUTS) / NUM_OUTPUTS);
            }
        }

        internal NodeGene(NodeType type, int index, Position position)
        {
            if (type != NodeType.Hidden)
            {
                throw new ArgumentException("Cannot specify position for none hidden node");
            }

            this.Type = type;
            this.Index = index;
            this.DrawPosition = position;
        }

        internal void SetPosition(Position position)
        {
            DrawPosition = position;
        }

        internal enum NodeType { Sensor, Output, Hidden }
    }
}
