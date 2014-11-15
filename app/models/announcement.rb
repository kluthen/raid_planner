class Announcement < ActiveRecord::Base
	belongs_to :user
	scope :recent, -> { order('created_at DESC').limit(5) }	
end
