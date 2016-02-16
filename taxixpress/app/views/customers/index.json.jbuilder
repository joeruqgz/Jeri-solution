json.array!(@customers) do |customer|
  json.extract! customer, :id, :id_customer, :id_user
  json.url customer_url(customer, format: :json)
end
