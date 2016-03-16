json.array!(@device_in_agreements) do |device_in_agreement|
  json.extract! device_in_agreement, :id, :agreement_id, :device_id, :price_is_leasing, :total_price, :monthly_price
  json.url device_in_agreement_url(device_in_agreement, format: :json)
end
