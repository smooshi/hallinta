require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone_number => "Phone Number",
        :role_id => 1,
        :currently_employed => false,
        :admin => false,
        :encrypted_password => "Encrypted Password"
      ),
      User.create!(
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone_number => "Phone Number",
        :role_id => 1,
        :currently_employed => false,
        :admin => false,
        :encrypted_password => "Encrypted Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
  end
end
