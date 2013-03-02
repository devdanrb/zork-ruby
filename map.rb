require 'matrix'

class Map
  attr_accessor :matrix

  def initialize matrix
    @matrix = Matrix.columns matrix
  end

  def exists position
    i = position[:y]
    j = position[:x]

    return false if i < 0 or j < 0 or @matrix.element(i, j) == nil
    return true
  end
end