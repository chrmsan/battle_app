def sign_in_and_play
	visit '/'
	fill_in 'player_1', with: 'Johnny Bravo'
	fill_in 'player_2', with: 'Jason Bourne'
	click_button 'Submit'
end