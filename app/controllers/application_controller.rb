require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new 
    end

    post '/teams' do
        @team = Team.new(params[:team_name], params[:team_motto])

        params[:team][:members].each do |member|
            Superhero.new(member[:name], member[:power], member[:biography])
        end

        @members = Superhero.all

        erb :team
    end


end
