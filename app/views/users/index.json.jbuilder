json.array!(@users) do |user|
  json.extract! user, :id, :email, :first_name, :last_name, :phone_number, :role_id, :currently_employed, :admin, :encrypted_password
  json.url user_url(user, format: :json)
end
