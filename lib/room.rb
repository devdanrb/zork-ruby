# -*- encoding: utf-8 -*-
class Room
  attr_accessor :description
  
  def initialize options
    @description = options[:description]
  end
end