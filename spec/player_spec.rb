require 'spec_helper'

describe Player do
	subject(:pikachu) {Player.new('Pikachu')}

	describe '#name' do
		it 'returns the player name' do
			expect(pikachu.name).to eq('Pikachu')
		end
	end

end