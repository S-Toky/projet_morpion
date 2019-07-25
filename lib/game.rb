class Game

	def initialize
			game_nul
	end

	def game_nul
		puts "rien n'est fait, matche null"
		puts "recommencer  oui/non?"
			start_again = gets.chomp.to_s
		if start_again == "oui"
			Board.new
		elsif start_again == "non"
			abort("GAME OVER")
		else
			puts "choisissez à nouveau"
			restart
		end
	end
end