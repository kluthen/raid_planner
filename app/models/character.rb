class Character < ActiveRecord::Base
	has_many :participating, dependent: :destroy
	has_many :roles, through: :participating
	has_many :character_specialisations, dependent: :destroy
	has_many :role_types, through: :character_specialisations
	accepts_nested_attributes_for :character_specialisations, :reject_if => lambda { |a| a[:role_type_id].blank?}
	belongs_to :user

	def self.classes
		["Guerrier", "Mage", "Voleur", "Clerc", "Primaliste"]		
	end

	def friendly_name
		"[#{user.username}] #{name}"
	end

	
end
