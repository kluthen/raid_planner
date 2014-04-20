class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.integer :ordered
      t.string :classe
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
