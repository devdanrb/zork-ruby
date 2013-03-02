require 'matrix'

class Map
  attr_accessor :matrix

  def initialize matrix
    @array = matrix
    @matrix = Matrix.columns matrix
  end

  def left room
    x = room[0] - 1
    y = room[1]

    return false if @array.length >= y
    return false if @array[y].length >= x

    return true
  end

  def right room

  end

  def straight room

  end

  def back room

  end
end