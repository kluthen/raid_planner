class EventTemplate < ActiveRecord::Base
	has_many :roles, dependent: :destroy
end
