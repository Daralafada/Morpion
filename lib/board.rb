require "pry" 

class Board 

attr_accessor:board

	def initialize
		@a1 = Boardcase.new("a1")
		@a2 = Boardcase.new("a2")
		@a3 = Boardcase.new("a3") 
		@b1 = Boardcase.new("b1") 
		@b2 = Boardcase.new("b2") 
		@b3 = Boardcase.new("b3") 
		@c1 = Boardcase.new("c1") 
		@c2 = Boardcase.new("c2") 
		@c3 = Boardcase.new("c3") 
	@board = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

	end 

	def show_board
	puts	"
     a   b  c
    __________
   1| #{@a1.case_value}| #{@b1.case_value}| #{@c1.case_value}|
    |__|__|__|
   2| #{@a2.case_value}| #{@b2.case_value}| #{@c2.case_value}|
    |__|__|__|
   3| #{@a3.case_value}| #{@b3.case_value}| #{@c3.case_value}|
    |__|__|__|
	"
	end 

	def player_win? (s)
		if @a1.case_value == s && @a2.case_value == s && @a3.case_value == s || @b1.case_value == s && @b2.case_value == s && @b3.case_value == s || @c1.case_value == s && @c2.case_value == s && @c3.case_value == s || @c1.case_value == s && @b2.case_value == s && @a3.case_value == s || @a1.case_value == s && @b2.case_value == s && @c3.case_value == s || @a1.case_value == s && @b1.case_value == s && @c1.case_value == s || @a2.case_value == s && @b2.case_value == s && @c2.case_value == s || @a3.case_value == s && @b3.case_value == s && @c3.case_value == s
			return true 
		end 
	end 

	def play (cell, symbol)
		@board.each do |boardcase|
			boardcase.case_value = symbol if cell == boardcase.case_name
		end 
	end 

	def empty? (cell)
		@board.each do |boardcase|
			if cell == boardcase.case_name
				return true if boardcase.case_value == " "
			end  
		end 
		return false 
	end 

end




