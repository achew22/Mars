require 'Matrix'

class Instructions

  def self.create_from(filename)
    new(File.read(filename).split("\n"))
  end

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def grid_dimensions
    text.first.split(" ").map(&:to_i)
  end

  def rover_1_position
    position(text[1])
  end

  def rover_2_position
    position(text[3])
  end

  def rover_1_instructions
    text[2].split("")
  end

  def rover_2_instructions
    text[4].split("")
  end

  private

  def dir_to_vector(direction)
    {
      'N' => Vector[ 0, 1],
      'E' => Vector[ 1, 0],
      'S' => Vector[ 0,-1],
      'W' => Vector[-1, 0],
    }[direction]
  end

  def position(s)
    x, y, direction = s.split(" ")
    return Vector[x.to_i, y.to_i], dir_to_vector(direction)
  end
end