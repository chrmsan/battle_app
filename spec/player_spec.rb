require 'spec_helper'

describe Player do
	subject(:pikachu) {Player.new('Pikachu')}

	describe '#name' do
		it 'returns the player name' do
			expect(pikachu.name).to eq('Pikachu')
		end
	end

	describe '#hit_points' do
		it 'returns the players HP' do
			expect(pikachu.hitpoints).to eq(described_class::DEF_HP)
		end
	end
end