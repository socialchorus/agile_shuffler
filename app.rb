require 'date'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'pg'
require 'json'

Dir["./models/*.rb"].each {|file| require file }
Dir["./views/*.rb"].each {|file| require file }
Dir["./controllers/*.rb"].each {|file| require file }
require './router'