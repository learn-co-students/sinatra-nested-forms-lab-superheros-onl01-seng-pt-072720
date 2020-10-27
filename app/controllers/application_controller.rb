require 'sinatra/base'
# require_relative '../models/team.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    post '/teams' do
        @new_team = Team.new(params[:team])
        params[:team][:members].each do |member_data|
            Hero.new(member_data)
        end
        erb :teams
    end


end
