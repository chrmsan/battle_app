class Game

	attr_reader :current_turn

	def initialize(player1, player2)
		@players = [player1, player2]
		@current_turn = player1
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

	def switch_turns
		@current_turn = opponent
	end


	def opponent
		@players.detect { |player| player != @current_turn }
	end

end