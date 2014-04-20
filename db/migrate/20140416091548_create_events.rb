class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :meet_time
      t.integer :players_required

      t.timestamps
    end
  end
end
