class Game
  attr_accessor :player

  def initialize player
    @player = player
  end

  def start
    loop do
      # quit the game ifthe player asks
      if @player.prompt == "quit"
        puts "You have quit the game."
        break
      end

      if @player.input == "go left"
        @player.go_left
      end
    end
  end
end