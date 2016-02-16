json.array!(@rates) do |rate|
  json.extract! rate, :id, :id_rate, :origin, :destination, :amount
  json.url rate_url(rate, format: :json)
end
