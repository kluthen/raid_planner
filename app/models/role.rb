class Role < ActiveRecord::Base
	belongs_to :event
	belongs_to :event_template
	belongs_to :role_type
	has_many :participating, dependent: :destroy
	has_many :pickups, through: :participating, dependent: :destroy
	has_many :characters, through: :participating

	def name
		role_type.name
	end

	def actual_players_count
		pickups.count + characters.count
	end

end
