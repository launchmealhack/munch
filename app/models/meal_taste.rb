class MealTaste < ActiveRecord::Base
  belongs_to :taste
  belongs_to :meal
end
