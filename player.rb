require './map'

class Player
  attr_reader :position, :num_moves

  def initialize matrix
    @position = {:i => 0, :j => 0}
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
    j = @position[:j]
    i = @position[:i]

    case where
      when "west"
        j -= 1
      when "east"
        j += 1
      when "north"
        i -= 1
      when "south"
        i += 1
    end

    new_position = {:i => i, :j => j}

    if @map.exists(new_position) == true
      @num_moves += 1

      @position = new_position
      puts "Going #{where}..."

      return true
    end

    return false
  end
end