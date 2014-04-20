class RoleType < ActiveRecord::Base
	belongs_to :parent, class_name: "RoleType", foreign_key: "role_type_id"
	has_many :roles
	has_many :character_specialisations, dependent: :destroy
end
