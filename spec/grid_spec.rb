require 'spec_helper'

describe Grid do 

  describe '.initialize' do 

    it "sets the grid's size" do 
      grid = Grid.new(5, 5)
      expect(grid.length).to eq 5
      expect(grid.width).to eq 5
    end
  end
end