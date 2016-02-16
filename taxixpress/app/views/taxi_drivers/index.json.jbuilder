json.array!(@taxi_drivers) do |taxi_driver|
  json.extract! taxi_driver, :id, :id_driver, :id_user
  json.url taxi_driver_url(taxi_driver, format: :json)
end
