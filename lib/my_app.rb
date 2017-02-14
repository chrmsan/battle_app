require 'sinatra/base'
require_relative 'models/player'
require_relative 'models/game'

class MyApp < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1])
    $player2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @game = Game.new
    @game.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end
