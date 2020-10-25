require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team_full_hash = params[:team]
        @team_members_hash = params[:team][:members]
        erb :team
    end
end

#team = team => {name: team_name, motto: team_motto members => [{name: member1_name, power: member1_power, bio: member1_bio}, {etc..}]}
