class AddEmailToDevs < ActiveRecord::Migration
  def change
    add_column :devs, :email, :string
  end
end
