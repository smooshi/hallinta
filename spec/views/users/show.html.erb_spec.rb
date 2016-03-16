require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :email => "Email",
      :first_name => "First Name",
      :last_name => "Last Name",
      :phone_number => "Phone Number",
      :role_id => 1,
      :currently_employed => false,
      :admin => false,
      :encrypted_password => "Encrypted Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Encrypted Password/)
  end
end
