require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team = Team.new(params[:team][:name], params[:team][:motto])

        heroes_array = params[:team][:members].map do |specs|
            new_hero = Hero.new(specs[:name], specs[:power], specs[:bio])
        end

        @member1 = heroes_array[0]
        @member2 = heroes_array[1]
        @member3 = heroes_array[2]

        erb :team
    end

end
