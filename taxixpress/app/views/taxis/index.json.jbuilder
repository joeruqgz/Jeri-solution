json.array!(@taxis) do |taxi|
  json.extract! taxi, :id, :type_taxi, :numbre_seats, :date_create, :date_update
  json.url taxi_url(taxi, format: :json)
end
