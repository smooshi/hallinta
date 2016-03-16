json.array!(@restaurant_evaluations) do |restaurant_evaluation|
  json.extract! restaurant_evaluation, :id, :restaurant_id, :company_id, :restaurant_evaluation_type_id, :value, :evaluation_by_user, :evaluation_time, :evaluation_comment
  json.url restaurant_evaluation_url(restaurant_evaluation, format: :json)
end
