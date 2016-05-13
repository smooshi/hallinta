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
    restaurant_id "4"
    user_id "1"
    responsible_user_id "1"
    agreement_length "0"
    start_date Date.today
    end_date Date.today
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

  factory :device_type do
    name "Go"
  end

  factory :device do
    device_type_id "1"
    identifier "Boo"
    purchase_day Date.today
    is_leased true
    leasing_price "1"
    leasing_length "1"
  end

  factory :software_in_agreement do
    agreement_id "1"
    software_id "1"
    monthly_price "2"
  end

  factory :device_in_agreement do
    agreement_id "1"
    device_id "1"
    monthly_price "2"
    total_price "2"
  end

  factory :current_user do
    email "test@test.com"
    first_name "Pekka"
    last_name "Pouta"
    admin false
    role_id "1"
    id "1"
  end
end