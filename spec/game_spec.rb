require 'spec_helper'

describe Game do
	subject(:game) {described_class.new(pikachu, bulbasaur) } #instantiates a game object
	let(:pikachu) { double :player } 	# instatiates a player object?
	let(:bulbasaur) { double :player } 	# instatiates a player object?


	describe '#attack' do
		it 'inflict damage to player who is being attacked' do
			expect(:bulbasaur).to receive(:receive_damage) # this line of code says that object can be applied this method, given that instantiated object has this method
			game.attack(:bulbasaur)
		end
	end

	describe '#player_1' do
		it 'retrieves the first player' do
			expect(game.player_1).to eq pikachu
		end
	end

	describe '#player_2' do
		it 'retrieves the second player' do
			expect(game.player_2).to eq bulbasaur
		end
	end

end