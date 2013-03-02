require './room'
require './player'
require './game'

# Create the map
map = [
  # row 0
  [
    # column 0
    Room.new,
    # column 1
    Room.new
  ],
  # row 1
  [
    # column 0
    Room.new,
    # column 1
    Room.new
  ]  
]

# Create and start the game
player = Player.new map
g = Game.new player
g.start