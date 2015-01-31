#game.rb
class Game
  attr_reader :name, :tags
 
  def initialize(name)
    @name = name
    @tags = []
  end
 
  def year(value)
    @year = value
  end
 
  def system(value)
    @system = value
  end
 
  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end
 
  def capture_screenshot
    puts "Grabbing a screenshot for #{@name}"
  end
 
  def play
    if @system == "SNES"
      raise "No emulator for SNES games"
    else
      puts "Starting #{@name}"
    end
  end
 
  def method_missing(method_name, *args)
    @tags << method_name.to_s
  end
end