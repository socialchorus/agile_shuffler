require 'date'
require 'rubygems'
require 'sinatra'
require 'sequel'
require 'sinatra/sequel'
require 'pg'
require './config/db/database'
require './router'
Dir["./models/*.rb"].each {|file| require file }
