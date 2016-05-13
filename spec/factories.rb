FactoryGirl.define do
  factory :user do
    email "test@test.com"
    first_name "Pekka"
    last_name "Pouta"
    password "test1"
    password_confirmation "test1"
  end

  factory :admin do
    email "admin@admin.com"
    first_name "Admin"
    last_name "Batman"
    password "admin1"
    password_confirmation "admin1"
  end
end