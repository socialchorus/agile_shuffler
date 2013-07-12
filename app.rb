require 'rubygems'
require 'sinatra'
require './config/database'
Dir["./models/*.rb"].each {|file| require file }
 
get '/hi' do
  "Hello World!"
end