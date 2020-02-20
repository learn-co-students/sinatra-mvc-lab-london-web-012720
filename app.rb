require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        object = PigLatinizer.new

        @user_phrase = params[:user_phrase]
        @pig_latin = object.latinize(@user_phrase)
        erb :show
    end
    
end