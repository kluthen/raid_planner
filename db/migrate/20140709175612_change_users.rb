class ChangeUsers < ActiveRecord::Migration
  def change
    add_column :users, :pickups, :boolean, default: false
  end
end
