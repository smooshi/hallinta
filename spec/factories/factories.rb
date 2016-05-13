FactoryGirl.define do
  factory :user do
    email "test@test.com"
    first_name "Pekka"
    last_name "Pouta"
    admin false
    role_id "1"
  end

  factory :admin, class:User do
    email "admin@admin.com"
    first_name "Admin"
    last_name "Batman"
    admin true
  end

  factory :company do
    name "Comp"
    city "Helsinki"
    email "email@email.com"
  end

  factory :company_type do
    name "Big"
    description "Thing"
  end

  factory :restaurant do
    name "Rest"
    company_id "1"
    restaurant_type_id "1"
    email "email@email.com"
  end

  factory :role do
    name "admin"
    description "bleh"
  end

  factory :agreement do
    restaurant_id "1"
    agreement_length "0"
  end

  factory :contact_person do
    company_id "1"
    restaurant_id "1"
    name "Silli"
    email "email@email.com"
  end

  factory :restaurant_type do
    name "Big"
    description "Big!"
  end

  factory :restaurant_evaluation_type do
    name "Big"
    description "Big!"
  end

  factory :restaurant_evaluation do
    restaurant_id "1"
    company_id "1"
    user_id "1"
    restaurant_evaluation_type_id "1"
    value "1"
  end

  factory :software do
    name "Kassa"
    identifier "1"
  end
end