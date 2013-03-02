require './map'

class Player
  attr_reader :current_room, :previous_room, :num_moves, :input

  def initialize matrix
    @current_room = [0, 0] # start in the first room
    @previous_room = nil
    @num_moves = 0
    @map = Map.new matrix
  end

  def prompt
    print "> "
    @input = gets.chomp

    return @input
  end

  def go_left
    if @map.left @current_room != nil
      @previous_room = @current_room
      @current_room = [@current_room[0] - 1, @current_room[1]]
      @num_moves += 1
      puts "Going left..."
    end
  end
end