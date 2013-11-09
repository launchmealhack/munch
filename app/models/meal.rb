class Meal < ActiveRecord::Base
  belongs_to :restaurant
  has_many :tastes, through: :meal_tastes
  has_many :meal_tastes
  has_many :types, through: :meal_types
  has_many :meal_types
  has_many :users, through: :reviews
  has_many :reviews
end
