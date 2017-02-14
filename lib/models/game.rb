class Game

	def initialize(player1, player2)
		@players = [player1, player2]
	end

	def first_player
		@players[0]
	end

	def second_player
		@players[1]
	end

	def attack(player)
		player.receive_damage
	end

end