class CreateDevs < ActiveRecord::Migration
  def up
    create_table :devs do |t|
      t.string :name
      t.boolean :active
    end
  end

  def down
    drop_table :devs
  end
end
