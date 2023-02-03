require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/boardcase'

puts "
-----------------------------------------------
|                  MORPION                    |
|              Version Chan 1.0               |
-----------------------------------------------"

start_game = Game.new 


