class Application

	def perform
		new_game = BoardCase.new 
    player1 = Player.new("name", 1) 
    player2 = Player.new("name", 2) 
    board = Board.new 
		my_game = Game.new
	end
end