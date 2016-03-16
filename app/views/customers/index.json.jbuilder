json.array!(@customers) do |customer|
  json.extract! customer, :id, :restaurant_id, :start_date, :end_date
  json.url customer_url(customer, format: :json)
end
