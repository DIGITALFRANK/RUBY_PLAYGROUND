
require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/owner'
require_relative './models/dog'



set :database, {adapter: 'postgresql', database: 'doggy_daycare'}


get '/' do 
    @dogs = Dog.all
    erb :index
end