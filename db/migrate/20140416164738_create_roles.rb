class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :event_template_id
      t.integer :event_id
      t.integer :required_players
      t.string :comment
      t.integer :role_type_id

      t.timestamps
    end
  end
end
