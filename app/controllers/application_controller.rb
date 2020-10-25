require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/heroes' do
        
        @team= Team.new(params[:team])

        params[:team][:heros].each do |detail|
            Hero.new(detail)
        end

        @heros = Hero.all

        erb :team


    end

end
