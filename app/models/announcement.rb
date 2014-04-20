class Announcement < ActiveRecord::Base
	belongs_to :user
	scope :recent, -> { order('created_at').limit(5) }	
end
