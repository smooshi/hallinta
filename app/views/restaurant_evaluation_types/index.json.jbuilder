json.array!(@restaurant_evaluation_types) do |restaurant_evaluation_type|
  json.extract! restaurant_evaluation_type, :id, :name, :description
  json.url restaurant_evaluation_type_url(restaurant_evaluation_type, format: :json)
end
