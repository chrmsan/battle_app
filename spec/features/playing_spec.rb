require 'spec_helper'

feature 'game play' do
	scenario 'Player 1 gets attack confirmation on Player 2' do
		sign_in_and_play
		click_button 'Player 1 Attack!'
		expect(page).to have_content('Player 1 has attacked Player 2')
	end
end