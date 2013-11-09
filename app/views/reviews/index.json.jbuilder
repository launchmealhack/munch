json.array!(@reviews) do |review|
  json.extract! review, :meal_id, :user_id, :vote, :price_paid, :content
  json.url review_url(review, format: :json)
end
