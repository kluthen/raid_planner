class AddPickupToUser < ActiveRecord::Migration
  def change
    add_column :users, :pickup, :boolean, default: false
  end
end
