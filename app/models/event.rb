class Event < ActiveRecord::Base
	has_many :roles, dependent: :destroy
	has_many :leaders, dependent: :destroy

	has_many :users, through: :leaders
	validates :leaders, presence: true

	scope :recent, -> { where("start_time > ?", 0.hour.ago).order(start_time: :asc) }
	scope :old, -> { where("start_time < ? AND start_time > ?",0.hour.from_now, 5.day.ago).order(start_time: :desc) }


	accepts_nested_attributes_for :users
	accepts_nested_attributes_for :roles, :reject_if => lambda { |a| a[:required_players].blank? || a[:role_type_id].blank?}

	def actual_players
		ct = 0
		roles.each do |r|
			ct += r.participating.where(available: true).count
		end
		ct
	end
end
