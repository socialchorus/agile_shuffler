require 'sinatra'
require 'sinatra/sequel'
require 'pg'

set :database, "postgres://localhost/agile_shuffler_dev"

migration "create the devs table" do
  database.create_table :devs do
    primary_key :id
    text        :name
    timestamp   :created_at, :null => false
  end
end