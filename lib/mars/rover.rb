class Rover
  attr_accessor :position, :direction

  def initialize(position, direction)
    @position = position
    @direction = direction
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

  def move
    @position = @position + @direction
  end

  def turn_left
    # Left rotation matrix
    @direction = Matrix[[0,1],[-1,0]] * @direction
  end

  def turn_right
    # Right rotation matrix
    @direction = Matrix[[0,1],[-1,0]] * @direction
  end
end


