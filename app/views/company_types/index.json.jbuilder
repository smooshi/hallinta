json.array!(@company_types) do |company_type|
  json.extract! company_type, :id, :name, :description
  json.url company_type_url(company_type, format: :json)
end
