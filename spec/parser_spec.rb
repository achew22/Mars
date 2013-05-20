require 'spec_helper'

describe Parser do 

  describe "#generate" do 

    let(:instructions) { "L M L M L M"}

    context "when sufficient parameters are passed in" do 

      it "generates a string without blank spaces" do 
        expect(Parser.generate(instructions)).to eq ["L", "M", "L", "M", "L", "M"]
      end
    end

    context "when insufficient parameters are passed in" do 

      it "raises an exception" do 
      end

      it "does not pass nil instructions on to the grid" do 
      end

      it "does not pass nil instructions on to the rover" do 
      end
    end
  end 


end