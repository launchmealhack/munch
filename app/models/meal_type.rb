class MealType < ActiveRecord::Base
  belongs_to :meal
  belongs_to :type
end
