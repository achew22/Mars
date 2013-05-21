class Runner

  attr_reader :argv

  def initialize(argv)
    @argv = argv
  end

  def run

    instructions = Instructions.create_from(filename)

    @grid = Grid.new(*instructions.grid_dimensions)

    @rover1 = Rover.new(*instructions.rover_1_position)
    @rover2 = Rover.new(*instructions.rover_2_position)

    report_position("Initial")

    @rover1.evaluate(instructions.rover_1_instructions)
    @rover2.evaluate(instructions.rover_2_instructions)

    report_position("Ending")
  end 

  private

  def report_position(status)
    puts "Rover 1 #{status} Position: x: #{@rover1.x}, y: #{@rover1.y}, direction: #{@rover1.direction}"
    puts "Rover 2 #{status} Position: x: #{@rover2.x}, y: #{@rover2.y}, direction: #{@rover2.direction}"
    puts 
  end

  def filename
    self.argv.first
  end
end 