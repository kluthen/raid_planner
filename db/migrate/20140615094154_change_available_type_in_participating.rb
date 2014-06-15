class ChangeAvailableTypeInParticipating < ActiveRecord::Migration
  def change
  	change_column :participatings, :available, :integer, default: 0
  end
end
