class Grid

  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end
end 


class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def position
    puts self.direction
    return [x, y]
  end

  def evaluate(instructions)
    instructions.split("").each do |c|
      case c
      when 'M' then move
      when 'L' then turnLeft
      when 'R' then turnRight
      else 
      end
    end
  end

  def compass_points
    [ 'N', 'E', 'S', 'W' ]
  end

  def move
    puts "#{self.direction}, x = #{self.x}, y = #{self.y}"
    if self.direction == 'N'
      self.y += 1
    elsif self.direction == 'E'
      self.x += 1
    elsif self.direction == 'W'
      self.x -= 1
    else
      self.y -= 1
    end
  end

  def turnLeft
    index = compass_points.index(self.direction)
    self.direction = compass_points[index - 1]
  end

  def turnRight
    index = compass_points.index(self.direction)
    self.direction = compass_points[index + 1]
  end
end 

# init_string = gets()   # 3 1 N
# instructions = gets()  # MLMLMLML

# x, y, direction = init_string.split(" ")
# rover = Rover.new(x.to_i, y.to_i, direction)
# rover.evaluate(instructions)

# puts "#{rover.x} #{rover.y} #{rover.direction}"
  # Sets the x position of the rover. Restricts the position
  # to within the grid.
  # def x=(value)
  #   if value >= 0 || value <= grid.width
  #     @x = value
  #   end
  #   return @x
  # end
