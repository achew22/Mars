require 'spec_helper'

describe Runner do 

  let(:runner) {Runner.new}

  describe ".run" do

    context "when a file is passed in" do 

      it "sends the contents to the parser to parse" do 
        pending
        Parser.should_receive(:generate)
      end

      it "creates a new grid" do 
        pending
        Grid.should_receive(:initalize)
      end

      it "creates two new rovers" do 
        pending
        Rover.should_receive(:initalize)
      end

      it "sends the rovers instructions" do 
      end

      it "outputs the rovers final position" do 
        pending
        expect(runner.run).to include("Rover 1 Ending Position")
        expect(runner.run).to include("Rover 2 Ending Position")
      end
    end

    context "when a file is not passed in" do 

      it "raises an exception" do 
      end

      it "raises an exception" do 
      end

      it "does not pass nil instructions on to the grid" do 
      end

      it "does not pass nil instructions on to the rover" do 
      end
    end 
  end
end