require 'spec_helper'

describe Grid do 

  describe '#initialize' do 

    let(:grid) { Grid.new(5, 5) }

    it "sets the grid's length" do 
      expect(grid.length).to eq 5
    end

    it "sets the grid's width" do 
      expect(grid.width).to eq 5
    end
  end
end