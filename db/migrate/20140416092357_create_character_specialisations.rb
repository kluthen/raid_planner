class CreateCharacterSpecialisations < ActiveRecord::Migration
  def change
    create_table :character_specialisations do |t|
      t.integer :character_id
      t.integer :role_type_id
      t.integer :ordered
      t.string :comment

      t.timestamps
    end
  end
end
