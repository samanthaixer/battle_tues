require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    session[:attack] = ""
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    @message = session[:attack]
    erb :play
  end

  get '/attack' do
    session[:attack] = "Player 1 attacked Player 2"

    $game.attack($game.player_2)
    redirect '/play'
  end
end
