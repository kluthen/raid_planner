class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.integer :role_type_id
      t.string :classe
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
