require 'spec_helper'

describe Runner do 

  let(:runner) {Runner.new(["filename"])}
  let!(:instructions) {Instructions.new(["5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"])}

  describe "#initialize" do 

    it "takes in a new file" do 
      expect(runner.argv).to eq ["filename"]
    end
  end

  describe ".run" do

    context "when a file with valid instructions is passed in" do 

      before do 
        Instructions.stub(:create_from).and_return(instructions)
      end

      it "returns the result of each rovers' starting and ending position" do 
        runner.should_receive(:report_position).twice
        runner.run
      end
    end

    context "when a file without instructions is passed in" do 

      # before(:each) do 
      #   Runner.any_instance.stub(:report_position)
      # end

      it "raises an exception" do
        runner = Runner.new([])
        expect { runner.run }.to raise_error(StandardError)
      end
    end 
  end
end