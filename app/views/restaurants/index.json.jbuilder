json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :company_id, :street_address, :city, :country, :phone_number, :email, :server_ip, :restaurant_type_id
  json.url restaurant_url(restaurant, format: :json)
end
