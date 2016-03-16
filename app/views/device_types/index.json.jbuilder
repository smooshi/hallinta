json.array!(@device_types) do |device_type|
  json.extract! device_type, :id, :name, :warranty_length, :total_price, :leasing_price_per_month
  json.url device_type_url(device_type, format: :json)
end
