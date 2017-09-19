require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = PigLatinizer.new
    @new_phrase = phrase.to_pig_latin(params[:user_phrase])
    erb :piglatinized
  end
end
