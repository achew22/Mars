require "matrix"

class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    place(x,y)
    @direction = direction
  end

  def place(x,y)
    @position_ = Vector[x, y]
  end

  def position
    @position_.to_a
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

  def move_matrix
    [
      Vector[ 0, 1], # North
      Vector[ 1, 0], # East
      Vector[ 0,-1], # South
      Vector[-1, 0]  # West
    ]
  end

  def move
    index = compass_points.index(@direction)
    @position_ = @position_ + move_matrix[index]
  end

  def turn_left
    index = compass_points.index(@direction)
    @direction = compass_points[index - 1]
  end

  def turn_right
    index = compass_points.index(@direction)
    @direction = compass_points[ (index + 1) % 4]
  end
end


