require 'matrix'

class Map
  attr_accessor :matrix

  def initialize matrix
    @matrix = Matrix.columns matrix
  end

  def left room
    x = room[0] - 1
    y = room[1]

    if @matrix[x - 1, y] == nil
      return nil
    end

    return [x - 1, y]
  end

  def right room

  end

  def straight room

  end

  def back room

  end
end