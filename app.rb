require 'sinatra/base'
require_relative 'lib/person'


class Rps < Sinatra::Base


  attr_reader :move, :comp_move, :person

  enable :sessions
  set :session_secret, "nothing"

  get '/' do
    erb(:index)
  end

  post "/names" do
    @person = Person.new(params[:name])
    erb(:name)
  end

  post "/play" do
    @person = @person
    @move = (params[:move])
    @comp_move = ["Rock", "Paper", "Scissors"].sample
    erb(:play)
  end


end
