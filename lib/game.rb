require 'readline'

class Game
  attr_accessor :player

  @@messages = {
    :help => [
      "Commands:",
      "- \\quit: stop the game",
      "- \\help: display this help message"
    ].join("\n"),
    :quit => "You have quit the game.",
    :unknown_command => "I can't understand that.",
    :room_not_found => "There is no room there.",
    :welcome => [

    ].join("\n")
  }

  def initialize player
    @player = player
  end

  def prompt
    @input = Readline.readline("> ", true)
  end

  def start
    loop do
      # Show the current position on the map
      #puts "Current position: " + @player.position.inspect

      self.prompt

      # by default, we'll assume that the input is valid
      # we'll then 
      result = true

      case @input
        when "\\quit"
          puts @@messages[:quit]
          break
        when "\\help"
          puts @@messages[:help]
        when "go west"
          result = @player.go_west
        when "go east"
          result = @player.go_east
        when "go north"
          result = @player.go_north
        when "go south"
          result = @player.go_south
        else
          puts @@messages[:unknown_command]
      end

      if result == false
        puts @@messages[:room_not_found]
      end
    end
  end
end