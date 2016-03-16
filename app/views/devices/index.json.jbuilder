json.array!(@devices) do |device|
  json.extract! device, :id, :device_type_id, :purchase_day, :is_leased, :full_price, :leasing_price, :leasing_length, :identifier, :rental_device
  json.url device_url(device, format: :json)
end
