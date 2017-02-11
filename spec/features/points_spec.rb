require 'spec_helper'

feature 'Adding player names' do

	scenario 'A user add names to Player 1 and Player 2' do
		sign_in_and_play
		expect(page).to have_content('Jason Bourne (100HP)')
	end

end