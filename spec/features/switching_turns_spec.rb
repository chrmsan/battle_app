require 'spec_helper'

feature 'Switching turns ' do
	context 'Seeing the current turn' do
		scenario 'At game initialization' do
			sign_in_and_play
			expect(page).to have_content("Pikachu's Turn")
		end

	end
end