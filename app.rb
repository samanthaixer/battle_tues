require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    session[:attack] = ""
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @message = session[:attack]
    erb :play
  end

  get '/attack' do
    session[:attack] = "Player 1 attacked Player 2"
    Game.new.attack(@player_2)
    redirect '/play'
  end
end
