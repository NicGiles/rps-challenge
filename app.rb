require 'sinatra/base'
require_relative 'lib/person'

class Rps < Sinatra::Base

  enable :sessions
  set :session_secret, "nothing"

  get '/' do
    erb(:index)
  end


  post "/names" do
    @person = Person.new(params[:name])
    erb(:play)
  end


end
