require 'sinatra/base'
require './lib/models/player'
require './lib/models/game'

class MyApp < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1])
    player2 = Player.new(params[:player_2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    @game.switch_turns
    erb :attack
  end

  run! if app_file == $0
end
