class Parser
  def intialize(grid, robot)
    @grid = Grid.new(length, width)
    @robot = Rover.new(x, y, direction)
  end
end