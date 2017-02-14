require 'spec_helper'

describe Game do
	subject(:game) {described_class.new } #instantiates a game object
	let(:pikachu) { double :player } 	# instatiates a player object?
	let(:bulbasaur) { double :player } 	# instatiates a player object?


	describe '#attack' do
		it 'inflict damage to player who is being attacked' do
			expect(bulbasaur).to receive(:receive_damage)
			game.attack(bulbasaur)
		end
	end

end