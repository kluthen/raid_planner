class Pickup < ActiveRecord::Base
	belongs_to :role_type
	has_one :role, through: :participating
	has_one :participating, dependent: :destroy

	accepts_nested_attributes_for :participating, :reject_if => lambda { |a| a[:role_id].blank?	 }

	def role_types 
		[role_type]
	end
	
end
