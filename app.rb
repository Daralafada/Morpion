require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'

board = Board.new

puts "
-----------------------------------------------
|                  MORPION                    |
|              Version Chan 1.0               |
-----------------------------------------------"
puts
puts "Quel est le prénom du premier joueur ?"
print ">" 
name_user1 = gets.chomp
user1 = Player.new(name_user1)

puts "Quel est le prénom du second joueur ?"
print ">" 
name_user2 = gets.chomp
user2 = Player.new(name_user2)

puts "Hello, #{user1.name} et #{user2.name} !"
puts "Voici le plateau avec lequel on va jouer :"

board.show_board_state
