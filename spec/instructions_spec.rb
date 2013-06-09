require 'Matrix'
require 'spec_helper'

describe Instructions do

  let(:text) { ["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"] }

  let(:instructions) {Instructions.new(["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"])}

  describe "#create_from" do

    before do
      File.stub(:read).and_return("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM\n")
    end

    it "takes in text and creates a new instance" do
      new_instructions = Instructions.create_from("filename")
      expect(new_instructions.text.count).to eq 5
    end
  end

  describe "#initialize" do

    it "has text" do
      expect(instructions.text).to eq text
    end
  end

  describe ".grid_dimensions" do

    it "generates grid dimensions" do
      expect(instructions.grid_dimensions).to eq [5, 5]
    end
  end

  describe ".rover_1_position" do

    it "generates the first rover's initial position" do
      expect(instructions.rover_1_position).to eq [Vector[1, 2], Vector[0, 1]]
    end
  end

  describe ".rover_2_position" do

    it "generates the second rover's initial position" do
      expect(instructions.rover_2_position).to eq [Vector[3, 3], Vector[1,0]]
    end
  end

  describe ".rover_1_instructions" do

    it "generates the first rover's instructions" do
      expect(instructions.rover_1_instructions).to eq ["L", "M", "L", "M", "L", "M", "L", "M", "M"]
    end
  end

  describe ".rover_2_instructions" do

    it "generates the second rover's instructions" do
      expect(instructions.rover_2_instructions).to eq ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]
    end
  end
end