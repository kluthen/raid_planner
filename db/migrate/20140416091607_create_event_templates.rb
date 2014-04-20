class CreateEventTemplates < ActiveRecord::Migration
  def change
    create_table :event_templates do |t|
      t.string :name
      t.text :description
      t.integer :players_required

      t.timestamps
    end
  end
end
