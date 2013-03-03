# -*- encoding: utf-8 -*-
$:.push(File.dirname(File.absolute_path(__FILE__)) + '/lib')
require 'room.rb'
require 'player.rb'
require 'game.rb'

# Create the map - represented by a matrix
map = [
  # row 0
  [
    # column 0
    Room.new(:description => "You are in a medow"),
    # column 1
    Room.new(:description => "You are in a medow"),
    # column 2
    nil
  ],
  # row 1
  [
    # column 0
    Room.new(:description => "You are in a medow"),
    # column 1
    Room.new(:description => "You are in a medow"),
    # column 2
    Room.new(:description => "You are in a medow")
  ]  
]

# Create and start the game
player = Player.new map
g = Game.new player
g.start