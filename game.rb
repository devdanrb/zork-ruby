class Game
  attr_accessor :player

  def initialize player
    @player = player
  end

  def prompt
    print "> "
    @input = gets.chomp
  end

  def start
    loop do
      # Show the current position on the map
      puts "Current position: " + @player.position.inspect

      self.prompt

      # quit the game if the player asks
      if @input == "quit"
        puts "You have quit the game."
        break
      end

      case @input
        when "go west"
          result = @player.go_west
        when "go east"
          result = @player.go_east
        when "go north"
          result = @player.go_north
        when "go south"
          result = @player.go_south
        else
          puts "I can't understand that."
          next
      end

      if result == false
        puts "There is no room there."
      end
    end
  end
end