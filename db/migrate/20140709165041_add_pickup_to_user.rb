class AddPickupToUser < ActiveRecord::Migration
  def change
    add_column :users, :pickup, :bool, default: false
  end
end
