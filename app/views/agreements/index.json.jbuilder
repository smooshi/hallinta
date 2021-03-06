json.array!(@agreements) do |agreement|
  json.extract! agreement, :id, :restaurant_id, :user_id, :start_date, :end_date, :agreement_length, :term_of_notice_in_months, :responsible_user_id, :invoicing_period_length, :invoicing_payment_time, :invoicing_date, :signed_by_customer
  json.url agreement_url(agreement, format: :json)
end
