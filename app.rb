require 'date'
require 'rubygems'
require 'sinatra'
require 'sequel'
require 'sinatra/sequel'
require 'pg'
require 'json'

require './config/db/database'
Dir["./models/*.rb"].each {|file| require file }
Dir["./views/*.rb"].each {|file| require file }
Dir["./controllers/*.rb"].each {|file| require file }
require './router'