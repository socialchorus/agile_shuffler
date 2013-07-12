set :database, "postgres://localhost/agile_shuffler_dev"

#--- Migrations ---#

migration "create the devs table" do
  database.create_table :devs do
    primary_key :id
    text        :name
    boolean     :active
  end
end

migration "create the pairs table" do
  database.create_table :pairings do
    primary_key :id
    foreign_key :leader_id, :devs
    foreign_key :follower_id, :devs
    date        :date

    index :date
  end
end