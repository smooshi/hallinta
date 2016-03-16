json.array!(@softwares) do |software|
  json.extract! software, :id, :name, :addon, :BEL_price, :price, :identifier
  json.url software_url(software, format: :json)
end
