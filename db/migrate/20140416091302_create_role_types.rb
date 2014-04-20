class CreateRoleTypes < ActiveRecord::Migration
  def change
    create_table :role_types do |t|
      t.string :name
      t.text :description
      t.integer :role_type_id

      t.timestamps
    end
  end
end
