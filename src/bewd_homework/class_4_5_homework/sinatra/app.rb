require 'sinatra'
require 'rerun'

  get '/' do
    @name = params[:name]
    @color = params[:color]

    erb :index

  end

  get '/rps' do
    @weapons = ["Rock", "Paper", "Calabaza", "Scissors"]
  # @choice = @weapons[rand(3)]
  @choice = @weapons.shuffle.first
  @my_choice = params[:your_choice]
    erb :rps
    
  end
