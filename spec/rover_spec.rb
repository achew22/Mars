require 'Matrix'
require 'spec_helper'

describe Rover do

  describe "#initialize" do

    it "sets the rover's initial position" do
      rover = Rover.new(Vector[0,0], Vector[0, 1])
      expect(rover.position).to eq Vector[0, 0]
      expect(rover.direction).to eq Vector[0, 1]
    end
  end

  describe ".evaluate" do

    let(:rover) { Rover.new(Vector[0,0], Vector[0, 1]) }

    context "when valid instructions are given" do

      it "returns the rover's final position without turning" do
        rover.evaluate(['M', 'M'])
        expect(rover.position).to eq Vector[0, 2]
      end

      it "returns the rover's final position when turning right" do
        rover.evaluate(['R', 'M'])
        expect(rover.position).to eq Vector[1, 0]
      end

      it "returns the rover's final position when starting from a different starting point" do
        rover.position = Vector[1, 2]
        rover.evaluate(['L', 'M', 'L', 'M', 'L', 'M', 'L', 'M', 'M'])
        expect(rover.position).to eq Vector[1, 3]
        expect(rover.direction).to eq Vector[0,1]
      end

      it "returns the rover's position when starting from another direction" do
        rover.position = Vector[3,3]
        rover.direction = Vector[1,0]
        rover.evaluate(['M', 'M', 'R', 'M', 'M', 'R', 'M', 'R', 'R', 'M'])
        expect(rover.position).to eq Vector[5, 1]
        expect(rover.direction).to eq Vector[1,0]
      end
    end
  end
end