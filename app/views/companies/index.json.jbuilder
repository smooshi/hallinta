json.array!(@companies) do |company|
  json.extract! company, :id, :name, :company_type_id, :street_address, :city, :country, :phone_number, :email, :added_by_user, :edited_by_user, :added_time, :edit_time
  json.url company_url(company, format: :json)
end
