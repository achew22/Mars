require 'spec_helper'

describe Rover do 

  describe ".initialize" do 

    it "sets the rover's initial position" do 
      rover = Rover.new(0, 0, 'N')
      expect(rover.position).to eq [0, 0]
    end
  end

  describe ".evaluate" do 

    let(:rover) { Rover.new(0, 0, 'N') }

    context "when instructions are given to move outside the grid" do

      it "returns the rover's final position" do 
        pending "need to add a check so it doesn't move outside grid"
        rover.evaluate(['L', 'M'])
        expect(rover.position).to eq [0, 0]
      end
    end

    context "when valid instructions are given" do 

      it "returns the rover's final position" do 
        rover.evaluate(['M', 'M'])
        expect(rover.position).to eq [0, 2]
      end

      it "returns the rover's final position when turning right" do 
        rover.evaluate(['R', 'M'])
        expect(rover.position).to eq [1, 0]
      end

      it "returns the rover's final position" do 
        rover.x, rover.y = 1, 2
        rover.evaluate(['L', 'M', 'L', 'M', 'L', 'M', 'L', 'M', 'M'])
        expect(rover.position).to eq [1, 3]
        expect(rover.direction).to eq 'N'
      end

      it "returns the rover's position when starting from another direction" do 
        rover = Rover.new(3, 3, 'E')
        rover.evaluate(['M', 'M', 'R', 'M', 'M', 'R', 'M', 'R', 'R', 'M'])
        expect(rover.position).to eq [5, 1]
        expect(rover.direction).to eq 'E'
      end
    end
  end
end