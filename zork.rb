require './room'
require './player'
require './game'

# Create the map
map = [
  [Room.new, Room.new],
  [Room.new, Room.new]
]

# Create and start the game
player = Player.new map
g = Game.new player
g.start