class Participating < ActiveRecord::Base
	self.table_name = "participatings"
	belongs_to :role
	belongs_to :character
	belongs_to :pickup

	validates :role, presence: true, if: :available?
	# validates :character, presence: true, if: :not_pickup?
	# validates :pickup, presence: true, if: :not_character?

	def available?
		available == 1
	end

	def away?
		available == 0
	end

	def unsure?
		available == 2
	end

	def is_pickup?
		if character != nil 
			character.user.pickup == true
		else
			!not_pickup? 
		end
	end

	def not_pickup?
		pickup.nil?
	end

	def not_character?
		character.nil?
	end

	def target 
		if character.nil? 
			pickup
		else
			character
		end
	end

	def classe 
		target.classe
	end

	def name
		target.name
	end

	def role_types
		target.role_types
	end
end
