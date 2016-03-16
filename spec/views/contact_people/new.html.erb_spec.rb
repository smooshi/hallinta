require 'rails_helper'

RSpec.describe "contact_people/new", type: :view do
  before(:each) do
    assign(:contact_person, ContactPerson.new(
      :restaurant_id => 1,
      :company_id => 1,
      :name => "MyString",
      :role => "MyString",
      :phone_number => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new contact_person form" do
    render

    assert_select "form[action=?][method=?]", contact_people_path, "post" do

      assert_select "input#contact_person_restaurant_id[name=?]", "contact_person[restaurant_id]"

      assert_select "input#contact_person_company_id[name=?]", "contact_person[company_id]"

      assert_select "input#contact_person_name[name=?]", "contact_person[name]"

      assert_select "input#contact_person_role[name=?]", "contact_person[role]"

      assert_select "input#contact_person_phone_number[name=?]", "contact_person[phone_number]"

      assert_select "input#contact_person_email[name=?]", "contact_person[email]"
    end
  end
end
