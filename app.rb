require 'rubygems'
require 'sinatra'
require './config/database'
 
get '/hi' do
  "Hello World!"
end