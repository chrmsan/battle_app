require 'spec_helper'

feature 'Adding player names' do

	scenario 'A user add names to Player 1 and Player 2' do
		visit '/'
		fill_in 'player_1', with: 'Johnny Bravo'
		fill_in 'player_2', with: 'Jason Bourne'
		click_button 'Submit'
		visit '/names'
		expect(page).to have_content('Johnny Bravo')
		expect(page).to have_content('Jason Bourne')
	end

end