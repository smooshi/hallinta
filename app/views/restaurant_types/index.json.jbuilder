json.array!(@restaurant_types) do |restaurant_type|
  json.extract! restaurant_type, :id, :name, :description
  json.url restaurant_type_url(restaurant_type, format: :json)
end
