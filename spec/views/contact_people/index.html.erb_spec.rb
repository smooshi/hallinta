require 'rails_helper'

RSpec.describe "contact_people/index", type: :view do
  before(:each) do
    assign(:contact_people, [
      ContactPerson.create!(
        :restaurant_id => 1,
        :company_id => 2,
        :name => "Name",
        :role => "Role",
        :phone_number => "Phone Number",
        :email => "Email"
      ),
      ContactPerson.create!(
        :restaurant_id => 1,
        :company_id => 2,
        :name => "Name",
        :role => "Role",
        :phone_number => "Phone Number",
        :email => "Email"
      )
    ])
  end

  it "renders a list of contact_people" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
