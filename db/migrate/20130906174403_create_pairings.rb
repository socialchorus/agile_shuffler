class CreatePairings < ActiveRecord::Migration
  def up
    create_table :pairings do |t|
      t.integer :leader_id
      t.integer :follower_id
      t.date    :date
    end

    add_index :pairings, :date
  end

  def down
    drop_table :pairings
  end
end
