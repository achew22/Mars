class Instructions

  def self.create_from(filename)
    puts filename
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

  def position(s)
    x, y, direction = s.split(" ")
    [x.to_i, y.to_i, direction]
  end
end 