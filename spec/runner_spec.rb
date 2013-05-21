require 'spec_helper'

describe Runner do 

  let(:runner) {Runner.new("filename")}
  let!(:instructions) {Instructions.new(["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"])}

  describe ".run" do

    before do 
      runner.stub(:filename)
      Instructions.stub(:create_from).and_return(instructions)
    end

    context "when a file is passed in" do 

      it "creates a new grid" do 
        (Grid).should_receive(:new).with(*instructions.grid_dimensions)    
        runner.run
      end

      xit "creates the first rover" do 

        (Rover).should_receive(:new).with(*instructions.rover_1_position)
        runner.run
      end

      xit "creates the second rover" do 

        (Rover).should_receive(:new).with(*instructions.rover_2_position)
        runner.run
      end

      it "sends rovers instructions to move" do
      end

      it "returns the result of the rovers' position" do 
        pending "need to change this so it reports that it receives it twice"
        runner.should_receive(:report_position)
        runner.run
      end
    end

    context "when a file is not passed in" do 

      it "raises an exception" do
        pending "how to test that it raises an exception"
        expect(Runner.new).to have(1).errors_on :argv
      end
    end 
  end
end