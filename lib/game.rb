class Game 

	def initialize 
		puts
		puts "Quel est le prénom du premier joueur ?"
		print ">" 
		name_user1 = gets.chomp
		@user1 = Player.new(name_user1)

		puts "Quel est le prénom du second joueur ?"
		print ">" 
		name_user2 = gets.chomp
		@user2 = Player.new(name_user2)

		puts "Hello, #{@user1.name} et #{@user2.name} !"
		puts "Voici le plateau avec lequel on va jouer :"

		@my_round = Board.new
		@my_round.show_board

		puts 
		puts "Commençons le jeu !"
		puts "#{@user1.name}, tu seras les X et #{@user2.name} tu seras les O. "

		round 
	end 

	def play1
		@my_round.show_board	
		puts "#{@user1.name} choisit une case > " 
		@case_choice = gets.chomp
		if @my_round.empty?(@case_choice)
			@my_round.play(@case_choice, "x") 
		else
			play1
		end 
	end 

	def play2 
		@my_round.show_board	
		puts "#{@user2.name} choisit une case > " 
		@case_choice = gets.chomp
		if @my_round.empty?(@case_choice) 
			@my_round.play(@case_choice, "o") 
		else 
			play2
		end 
	end 

	def round
		i = 0
		while i<10
			play1
			i+=1
			if @my_round.player_win?("x")
				puts "Bravo #{@user1.name} tu as gagné "
				@my_round.show_board	
				exit 
			end 
			if i == 9 
				@my_round.show_board	
				puts "Malheur, vous êtes trop bons, aucun winner, sorry."
				exit 
			end
			play2
			i+=1
			if @my_round.player_win?("o")
				puts "Bravo #{@user2.name} tu as gagné "
 				@my_round.show_board	
 				exit 
 			end
 		end
	end 

end 