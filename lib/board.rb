
class Board
	attr_accessor 

	def initialize 
		@case_hash = {  #initialisation des case vide pour le tableau
			"A1" => "#", "A2" => "#", "A3" => "#",
			"B1" => "#", "B2" => "#", "B3" => "#",
			"C1" => "#", "C2" => "#", "C3" => "#"
			}

		#déroulement du jeux
		show_game
		round_p1
		show_game
		round_p2
		show_game
		round_p1
		show_game
		round_p2
		show_game
		round_p1
		show_game
		round_p2
		show_game
		round_p1
		show_game
		round_p2
		show_game
		round_p1
		show_game

	end

	def show_game
		"\n"
		puts "  A    B    C"
		puts "1 #{@case_hash["A1"]} | #{@case_hash["B1"]} | #{@case_hash["C1"]}"
		puts "2 #{@case_hash["A2"]} | #{@case_hash["B2"]} | #{@case_hash["C2"]}"
		puts "3 #{@case_hash["A3"]} | #{@case_hash["B3"]} | #{@case_hash["C3"]}"
		
	end

	def round_p1 #action du player 1
		puts "player 1 : choisir une case pour jouer"
		choice = gets.chomp.upcase
		if @case_hash[choice] == "#"
			@case_hash[choice] = "X"
		else
			puts "vous ne pouvez plus être dans cette case, choisissez un autre"
			round_p1 #relance le tour du player 1
		end
		victory
	end

		def round_p2 #action du player 2
			puts "player 2 : choisir une case pour jouer"
				choice = gets.chomp.upcase
		if @case_hash[choice] == "#"
				@case_hash[choice] = "O"
		else
			puts "vous ne pouvez plus être dans cette case, choisissez un autre"
			round_p2 #relance le tour du player 2
		end
			victory
	end

	def victory
		 if @case_hash["A1"] == "X" && @case_hash["A2"] == "X" && @case_hash["A3"] == "X" || @case_hash["B1"] == "X" && @case_hash["B2"] == "X" && @case_hash["B3"] == "X" || @case_hash["C1"] == "X" && @case_hash["C2"] == "X" && @case_hash["C3"] == "X" || @case_hash["A1"] == "X" && @case_hash["B1"] == "X" && @case_hash["C1"] == "X" || @case_hash["A2"] == "X" && @case_hash["B2"] == "X" && @case_hash["C2"] == "X" || @case_hash["A3"] == "X" && @case_hash["B3"] == "X" && @case_hash["C3"] == "X" || @case_hash["A1"] == "X" && @case_hash["B2"] == "X" && @case_hash["C3"] == "X" || @case_hash["C1"] == "X" && @case_hash["B2"] == "X" && @case_hash["A3"] == "X"
      puts "vous avez gagner!"  
      restart #menu pour recommencer
    end
		
		if @case_hash["A1"] == "O" && @case_hash["A2"] == "O" && @case_hash["A3"] == "O" || @case_hash["B1"] == "O" && @case_hash["B2"] == "O" && @case_hash["B3"] == "O" || @case_hash["C1"] == "O" && @case_hash["C2"] == "O" && @case_hash["C3"] == "O" || @case_hash["A1"] == "O" && @case_hash["B1"] == "O" && @case_hash["C1"] == "O" || @case_hash["A2"] == "O" && @case_hash["B2"] == "O" && @case_hash["C2"] == "O" || @case_hash["A3"] == "O" && @case_hash["B3"] == "O" && @case_hash["C3"] == "O" || @case_hash["A1"] == "O" && @case_hash["B2"] == "O" && @case_hash["C3"] == "O" || @case_hash["C1"] == "O" && @case_hash["B2"] == "O" && @case_hash["A3"] == "O"
      puts "vous avez gagner!"  
      restart #menu pour recommencer
    end
	end

	def restart
		puts "voulez vous recommencer? oui/non"
			start_again = gets.chomp.to_s
		if start_again == "oui"
			Board.new
		elsif start_again == "non"
			abort("GAME OVER")
		else
			puts "choisissez à nouveau"
		end
	end
end

