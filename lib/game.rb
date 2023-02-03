class Game 
attr_accessor :user1_choice, :user2_choice
	def user1_case_choice 
		puts "#{user1.name} choisit une case > "
		@user1_choice = gets
		#hash/case_choisie = "X"
	end 

def user2_case_choice 
		puts "#{user2.name} à ton tour > "
		@user2_choice = gets
		#hash/case_choisie = "O"
end 
end 