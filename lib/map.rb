require 'matrix'

class Map
  attr_accessor :matrix

  def initialize matrix
    @matrix = Matrix.columns matrix
  end

  def exists position
    i = position[:i]
    j = position[:j]

    # Disallow:
    # * negative indexes - teleport from one edge to another
    # * out of bounds
    return false if i < 0 or j < 0 or @matrix.element(i, j) == nil
    return true
  end
end