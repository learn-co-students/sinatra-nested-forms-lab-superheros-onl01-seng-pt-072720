ENV['SINATRA_ENV'] ||= "development"

# require 'require_all'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

Dir["../app/models/"].each {|file| require file }
Dir["../app/views/"].each {|file| require file }
Dir["../app/controllers/"].each {|file| require file }
# require_all 'app'
