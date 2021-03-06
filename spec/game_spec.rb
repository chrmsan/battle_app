require 'spec_helper'

describe Game do
	subject(:game) {described_class.new(pikachu, bulbasaur) } #instantiates a game object
	let(:pikachu) { double :player } 	# instatiates a player object?
	let(:bulbasaur) { double :player } 	# instatiates a player object?


	describe '#attack' do
		it 'inflict damage to player who is being attacked' do
			expect(bulbasaur).to receive(:receive_damage) # this line of code says that object can be applied this method, given that instantiated object has this method
			game.attack(bulbasaur)
		end
	end

	describe '#player_1' do
		it 'retrieves the first player' do
			expect(game.first_player).to eq pikachu
		end
	end

	describe '#player_2' do
		it 'retrieves the second player' do
			expect(game.second_player).to eq bulbasaur
		end
	end

	describe '#current_turn' do
		it 'starts at player_1' do
			expect(game.current_turn).to eq pikachu
		end
	end

	describe '#switch turns' do
		it 'switches the turns' do
			game.switch_turns
			expect(game.current_turn).to eq bulbasaur
		end
	end

end