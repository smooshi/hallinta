json.array!(@other_billing_in_agreements) do |other_billing_in_agreement|
  json.extract! other_billing_in_agreement, :id, :agreement_id, :description, :total_price, :monthly_price
  json.url other_billing_in_agreement_url(other_billing_in_agreement, format: :json)
end
