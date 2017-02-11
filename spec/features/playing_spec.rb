require 'spec_helper'

feature 'game play' do
	scenario 'Player 1 gets attack confirmation on Player 2' do
		sign_in_and_play
		click_button 'Attack!'
		expect(page).to have_content('Johnny Bravo has attacked Jason Bourne')
	end
end