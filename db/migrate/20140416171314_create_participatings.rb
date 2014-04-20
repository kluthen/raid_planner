class CreateParticipatings < ActiveRecord::Migration
  def change
    create_table :participatings do |t|
      t.integer :role_id
      t.integer :character_id
      t.integer :pickup_id
      t.string :comment

      t.timestamps
    end
  end
end
