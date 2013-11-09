class Taste < ActiveRecord::Base
	has_many :meals, through: :meal_tastes
	has_many :meal_tastes
end
