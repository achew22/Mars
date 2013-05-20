class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def position
    [x, y]
  end

  def evaluate(instructions)
    instructions.each do |c|
      case c
      when 'M' then move
      when 'L' then turn_left
      when 'R' then turn_right
      end
    end
  end

  private

  def compass_points
    [ 'N', 'E', 'S', 'W' ]
  end

  def move
    if direction == 'N'
      self.y += 1
    elsif direction == 'E'
      self.x += 1
    elsif direction == 'W'
      self.x -= 1
    else
      self.y -= 1
    end
  end

  def turn_left
    index = compass_points.index(direction)
    direction = compass_points[index - 1]
  end

  def turn_right
    index = compass_points.index(direction)
    self.direction = compass_points[ (index + 1) % 4]
  end
end 


