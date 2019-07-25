class Player
	attr_accessor :name, :number

	def initialize(name, number)
		puts "presente toi pour jouer"
		name = gets.chomp.to_s
		puts "tu es le joueur numéro #{number}"	
	end
end