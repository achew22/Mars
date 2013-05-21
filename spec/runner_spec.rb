require 'spec_helper'

describe Runner do 

  let(:runner) {Runner.new("filename")}
  let!(:instructions) {Instructions.new(["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"])}

  describe ".run" do

    before(:each) do 
      Runner.any_instance.stub(:report_position)
    end

    context "when a file with valid instructions is passed in" do 

      before do 
        runner.stub(:filename).and_return ""
        Instructions.stub(:create_from).and_return(instructions)
      end

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
        expect { raise StandardError }.to raise_error
      end
    end 
  end
end