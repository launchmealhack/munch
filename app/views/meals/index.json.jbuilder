json.array!(@meals) do |meal|
  json.extract! meal, :name, :description, :price, :score, :restaurant_id
  json.url meal_url(meal, format: :json)
end
