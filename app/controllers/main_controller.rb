class MainController < ApplicationController
  def index
  	@meals = Meal.all
  end
end
