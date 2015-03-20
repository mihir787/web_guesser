require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

get '/' do
  p params.inspect
  erb :index, :locals => {:number => number}
end
