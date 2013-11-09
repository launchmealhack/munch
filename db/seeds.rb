# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	for i in 0..10
		Restaurant.create(name: "Restaurant#{i}", address: "whatever", phone: "1234567890")
	end

	for i in 0..100
		r = rand(1..10)
		Meal.create(name: "LaunchMeal#{i}", restaurant_id: r , description: "whatever", price: 10.00 )
	end

