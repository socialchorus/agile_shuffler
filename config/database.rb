require 'sinatra'
require 'sinatra/sequel'
require 'pg'

set :database, "postgres://localhost/agile_shuffler_dev"

migration "create the devs table" do
  database.create_table :devs do
    primary_key :id
    text        :name
    boolean     :active
  end
end

migration "create the pairs table" do
  database.create_table :pairs do
    primary_key :id
    foreign_key :dev_one, :devs
    foreign_key :dev_two, :devs
    date        :last_pair_date

    index :last_pair_date
  end
end