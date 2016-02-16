json.array!(@travels) do |travel|
  json.extract! travel, :id, :id_travel, :location_start, :des_location_start, :location_end, :des_location_end, :type_pay, :cost, :booking_time
  json.url travel_url(travel, format: :json)
end
