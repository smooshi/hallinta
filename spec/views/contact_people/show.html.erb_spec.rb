require 'rails_helper'

RSpec.describe "contact_people/show", type: :view do
  before(:each) do
    @contact_person = assign(:contact_person, ContactPerson.create!(
      :restaurant_id => 1,
      :company_id => 2,
      :name => "Name",
      :role => "Role",
      :phone_number => "Phone Number",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Email/)
  end
end
