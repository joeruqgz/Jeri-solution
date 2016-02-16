json.array!(@users) do |user|
  json.extract! user, :id, :id_user, :name, :last_name, :email, :name_user, :password, :status, :type_user
  json.url user_url(user, format: :json)
end
