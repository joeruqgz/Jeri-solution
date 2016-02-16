json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :id_assignment, :id_taxi, :id_travel, :status, :id_user_operator, :id_customer, :username
  json.url assignment_url(assignment, format: :json)
end
