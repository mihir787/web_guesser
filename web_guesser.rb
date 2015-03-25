require 'sinatra'
require 'sinatra/fix_951'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  guess = params['guess'].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message}
end

def check_guess(guess)
  if guess == 0
    ""
  elsif NUMBER - guess >= 5
    "Way too low!"
  elsif NUMBER - guess <= -5
    "Way too high!"
  elsif guess < NUMBER
    "Too low!"
  elsif guess > NUMBER
    "Too high!"
  else
    "You got it right!\nThe Secret Number is #{NUMBER}"
  end
end
