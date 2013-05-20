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

  #make the parser do this, and make it more abstract
  #something that reads in the file, tells the parser to parse it, and takes the parsed instructions
  #and sends to rover
  #make a runner class that takes in file, sends to parser, and then sends instructions to rover.

  def evaluate(instructions)
    instructions.split("").each do |c|
      case c
      when 'M' then move
      when 'L' then turn_left
      when 'R' then turn_right
      else 
      end
    end
  end

  def compass_points
    [ 'N', 'E', 'S', 'W' ]
  end

  def move
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

  def turn_left
    index = compass_points.index(self.direction)
    self.direction = compass_points[index - 1]
  end

  def turn_right
    index = compass_points.index(self.direction)
    self.direction = compass_points[ (index + 1) % 4]
  end
end 

#allow the user to pass in instructions in a binary

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


#create a bin, no rb after word_sorter
