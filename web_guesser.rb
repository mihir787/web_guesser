require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)
@color = "white"

get '/' do
  guess = params['guess'].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message, :color => @color}
end

def check_guess(guess)
  if guess == 0
    @color = "white"
    ""
  elsif NUMBER - guess >= 5
    @color = "red"
    "Way too low!"
  elsif NUMBER - guess <= -5
    @color = "red"
    "Way too high!"
  elsif guess < NUMBER
    @color = "rgb(136,0,0)"
    "Too low!"
  elsif guess > NUMBER
    @color = "rgb(136,0,0)"
    "Too high!"
  else
    @color = "green"
    "You got it right!\nThe Secret Number is #{NUMBER}"
  end

end
