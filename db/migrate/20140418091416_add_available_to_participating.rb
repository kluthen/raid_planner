class AddAvailableToParticipating < ActiveRecord::Migration
  def change
    add_column :participatings, :available, :boolean, default: true
  end
end
