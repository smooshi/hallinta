json.array!(@software_in_agreements) do |software_in_agreement|
  json.extract! software_in_agreement, :id, :software_id, :agreement_id, :monthly_price
  json.url software_in_agreement_url(software_in_agreement, format: :json)
end
