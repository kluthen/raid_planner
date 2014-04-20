class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
