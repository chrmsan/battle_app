require 'spec_helper'

describe Player do
	subject(:pikachu) {Player.new('Pikachu')}
	subject(:bulbasaur) {Player.new('Bulbasaur')}

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


	describe '#receive_damage' do
		it 'reduces player hitpoints by 10HP' do
			expect { pikachu.receive_damage }.to change { pikachu.hitpoints }.by(-(described_class::DAMAGE_HP))
		end
	end
end