require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'../views/super_hero'
    end

    post '/team' do

        @team_name = params["team"]["name"]
        @team_motto = params["team"]["motto"]
        # @member1 = params["team"]["members"][0]["name"], params["team"]["members"][0]["power"], params["team"]["members"][0]["bio"]
        # @member2 = params["team"]["members"][1]["name"], params["team"]["members"][1]["power"], params["team"]["members"][1]["bio"]
        # @member3 = params["team"]["members"][2]["name"], params["team"]["members"][2]["power"], params["team"]["members"][2]["bio"]
        @member1 = params["team"]["members"][0]
        @member2 = params["team"]["members"][1]
        @member3 = params["team"]["members"][2]
        erb :'../views/team'
    end
end
