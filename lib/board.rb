require "pry" 

class Boardcase 

	def case_state
		 case_state = []
	end

	def case_hash
		case_hash = Hash.new { |hash, board_arr| hash[board_arr] = case_state }
	end 
end


class Board < Boardcase

	def show_board_state
	board_arr = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
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





