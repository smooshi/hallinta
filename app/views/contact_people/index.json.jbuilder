json.array!(@contact_people) do |contact_person|
  json.extract! contact_person, :id, :restaurant_id, :company_id, :name, :role, :phone_number, :email
  json.url contact_person_url(contact_person, format: :json)
end
