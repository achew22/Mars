require 'spec_helper'

describe Rover do 

  describe ".initialize" do 

    before do 
      Grid.new(5, 5)
    end

    xit "sets the rover's initial position" do 
      rover = Rover.new(0, 0, 'N')
      expect(rover.position).to eq [0, 0]
    end
  end

  describe ".evaluate" do 

    let(:rover) { Rover.new(0, 0, 'N') }

    context "when no instructions are given" do 

      it "returns the rover's original- and final- position" do 
        rover.evaluate(" ")
        expect(rover.position).to eq [0, 0]
      end
    end

    context "when instructions are given to move outside the grid" do

      it "returns the rover's final position" do 
        rover.evaluate('LM')
        expect(rover.position).to eq [0, 0]
      end
    end

    context "when valid instructions are given" do 

      it "returns the rover's final position" do 
        rover.evaluate('MM')
        expect(rover.position).to eq [0, 2]
      end

      it "returns the rover's final position when turning right" do 
        rover.evaluate('RM')
        expect(rover.position).to eq [1, 0]
      end

      it "returns the rover's final position" do 
        rover.x = 1
        rover.y = 2
        rover.evaluate('LMLMLMLMM')
        expect(rover.position).to eq [1, 3]
        expect(rover.direction).to eq 'N'
      end

      it "returns the rover's position when starting from another direction" do 
        rover = Rover.new(3, 3, 'E')
        rover.evaluate('MMRMMRMRRM')
        expect(rover.position).to eq [5, 1]
        expect(rover.direction).to eq 'E'
      end
    end
  end
end