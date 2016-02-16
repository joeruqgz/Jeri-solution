json.array!(@taxis) do |taxi|
  json.extract! taxi, :id, :id_taxi, :type_taxi, :number_seats, :id_driver, :status
  json.url taxi_url(taxi, format: :json)
end
