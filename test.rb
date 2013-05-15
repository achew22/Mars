require 'rspec'

require_relative './rover'

describe Grid do 

  describe '.initialize' do 

    it "sets the grid's size" do 
      grid = Grid.new(5, 5)
      expect(grid.length).to eq 5
      expect(grid.width).to eq 5
    end
  end
end


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

      xit "returns the rover's original- and final- position" do 
        rover.evaluate(" ")
        expect(rover.position).to eq [0, 0]
      end
    end

    context "when instructions are given to move outside the grid" do

      xit "returns the rover's final position" do 
        rover.evaluate('LM')
        expect(rover.position).to eq [0, 0]
      end
    end

    context "when valid instructions are given" do 

      xit "returns the rover's final position" do 
        rover.evaluate('MM')
        expect(rover.position).to eq [0, 2]
      end

      it "returns the rover's final position" do 
        rover.evaluate('RM')
        expect(rover.position).to eq [1, 0]
      end
    end
  end
end