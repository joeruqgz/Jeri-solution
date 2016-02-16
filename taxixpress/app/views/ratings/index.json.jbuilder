json.array!(@ratings) do |rating|
  json.extract! rating, :id, :id_rating, :id_assignment, :value, :comment
  json.url rating_url(rating, format: :json)
end
