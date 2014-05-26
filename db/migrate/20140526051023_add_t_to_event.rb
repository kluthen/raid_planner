class AddTToEvent < ActiveRecord::Migration
  def change
    add_column :events, :tier, :integer
  end
end
