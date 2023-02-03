require "pry" 

class Boardcase < Board
	attr_accessor :case_value

	def initialize 
		@case_value = " "
	end
end


class Board 

attr_accessor:board

	def initialize
		a1 = Boardcase.new 
		a2 = Boardcase.new 
		a3 = Boardcase.new 
		b1 = Boardcase.new 
		b2 = Boardcase.new 
		b3 = Boardcase.new 
		c1 = Boardcase.new 
		c2 = Boardcase.new 
		c3 = Boardcase.new 
	board_arr = [a1, a2, a3, b1, b2, b3, c1, c2, c3]
	@board = board_arr
	end 

	def show_board
	puts	"
	__________
	|#{board_arr[0]}|#{board_arr[3]}|#{board_arr[6]}|
	|__|__|__|
	|#{board_arr[1]}|#{board_arr[4]}|#{board_arr[7]}|
	|__|__|__|
	|#{board_arr[2]}|#{board_arr[5]}|#{board_arr[8]}|
	|_ |__|__|
	"
	end 
end




