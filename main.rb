# Q: Does the order of the requires matter?
require 'pry'
# require_relative 'lib/user_interface'
require_relative 'lib/fancy_user_interface'
require_relative 'lib/player'
require_relative 'lib/tile'
require_relative 'lib/board'
require_relative 'lib/game'

game = Game.new()
game.start_game