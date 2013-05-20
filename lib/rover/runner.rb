class Runner

  attr_reader :argv

  def initialize(argv)
    @argv = argv
  end

  def run
    grid = parse(text.first)
    r_1 = parse(text[1])
    r_2 = parse(text[3])
    generate_grid(grid)
    @rover1 = generate_rover(r_1)
    @rover2 = generate_rover(r_2)

    initial_position
    o_instructions = parse(text[2])
    t_instructions = parse(text[-1])
    @rover1.evaluate(o_instructions)
    @rover2.evaluate(t_instructions)

    ending_position
  end 

  private

  def initial_position
    puts "Rover 1 Initial Position: x: #{@rover1.x}, y: #{@rover1.y}, direction: #{@rover1.direction}"
    puts "Rover 2 Initial Position: x: #{@rover2.x}, y: #{@rover2.y}, direction: #{@rover2.direction}"
    puts "__________________________________________________"
  end

  def ending_position
    puts "Rover 1 Ending Position: x: #{@rover1.x}, y: #{@rover1.y}, direction: #{@rover1.direction}"
    puts "Rover 2 Ending Position: x: #{@rover2.x}, y: #{@rover2.y}, direction: #{@rover2.direction}"
  end 

  def filename
    self.argv.first
  end

  def text
    @text ||= File.read(filename).split(/\n/)
  end

  def parse(text)
    Parser.generate(text)
  end

  def generate_grid(grid)
    @grid = Grid.new(grid[0].to_i, grid[-1].to_i)
  end

  def generate_rover(instructions)
    Rover.new(instructions[0].to_i, instructions[1].to_i, instructions[-1])
  end
end 