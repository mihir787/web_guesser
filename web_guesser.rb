require 'sinatra'
require 'sinatra/reloader'
x = rand(100)

get '/' do
  "Sercret number is cool #{x}"
end
