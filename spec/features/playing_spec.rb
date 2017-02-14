require 'spec_helper'

feature 'Game play' do
	scenario 'Player 1 gets attack confirmation on Player 2' do
		sign_in_and_play
		click_button 'Attack!'
		expect(page).to have_content('Johnny Bravo has attacked Jason Bourne')
	end

	scenario 'Player 2 lose 10HP when attacked' do
		sign_in_and_play
		click_button 'Attack!'
		click_link 'Return to Game'
		expect(page).not_to have_content('Jason Bourne (100HP)')
		expect(page).to have_content('Jason Bourne (90HP)')
	end
end