class Type < ActiveRecord::Base
	has_many :meals, through: :meal_types
	has_many :meal_types
end
