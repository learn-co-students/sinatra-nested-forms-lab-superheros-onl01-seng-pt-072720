require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @heros = params[:team]
        @hero_members = params[:team][:member]
        erb :team
    end
end
