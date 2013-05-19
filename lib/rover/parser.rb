class Parser
  def intialize(grid, robot)
    @grid = Grid.new(length, width)
    @robot = Robot.new(x, y, direction)
  end
end