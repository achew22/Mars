require 'spec_helper'

describe Runner do 

  let(:runner) {Runner.new("filename")}
  let!(:instructions) {Instructions.new(["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"])}
  let(:rover) { Rover.new(1, 2, 'N')}

  describe ".run" do

    before do 
      runner.stub(:filename)
      Instructions.stub(:create_from).and_return(instructions)
    end

    context "when a file with valid instructions is passed in" do 

      it "creates a new grid" do 
        (Grid).should_receive(:new).with(*instructions.grid_dimensions)    
        runner.run
      end

      context "creating new rovers" do 

        before(:each)  do 
          runner.stub(:report_position)
          Rover.any_instance.stub(:evaluate)
        end

        it "creates two rovers" do 
          pending "stub not working"
          (Rover).should_receive(:new)
          runner.run
        end

        it "sends rovers instructions to move" do
          instructions.should_receive(:rover_1_instructions)
          runner.run
        end
      end

      it "returns the result of each rovers' starting and ending position" do 
        runner.should_receive(:report_position).twice
        runner.run
      end
    end

    context "when a file without instructions is passed in" do 

      it "raises an exception" do
        pending "how to test that it raises an exception"
        expect(Runner.new("")).to have(1).errors_on :argv
      end
    end 
  end
end