require './map'

class Player
  attr_reader :position, :num_moves

  def initialize matrix
    @position = {:x => 0, :y => 0}
    @num_moves = 0
    @map = Map.new matrix
  end

  def go_west
    return self.move_to "west"
  end

  def go_east
    return self.move_to "east"
  end

  def go_north
    return self.move_to "north"
  end

  def go_south
    return self.move_to "south"
  end

  def move_to where
    x = @position[:x]
    y = @position[:y]

    case where
      when "west"
        x -= 1
      when "east"
        x += 1
      when "north"
        y -= 1
      when "south"
        y += 1
    end

    new_position = {:x => x, :y => y}

    if @map.exists(new_position) == true
      @num_moves += 1

      @position = new_position
      puts "Going #{where}..."

      return true
    end

    return false
  end
end