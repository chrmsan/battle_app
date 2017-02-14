require 'spec_helper'

feature 'Switching turns ' do
	context 'Seeing the current turn' do
		scenario 'At game initialization' do
			sign_in_and_play
			expect(page).to have_content("Johnny Bravo's Turn")
		end

		scenario 'after player 1 has attacked' do
			sign_in_and_play
			sign_in_and_play
			click_button 'Attack!'
			click_link 'Return to Game'
			expect(page).not_to have_content("Johnny Bravo's Turn")
			expect(page).to have_content("Jason Bourne's Turn")
		end
	end
end