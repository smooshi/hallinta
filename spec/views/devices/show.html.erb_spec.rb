require 'rails_helper'

RSpec.describe "devices/show", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :device_type_id => 1,
      :is_leased => false,
      :full_price => 2,
      :leasing_price => 3,
      :leasing_length => 4,
      :identifier => "Identifier",
      :rental_device => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/false/)
  end
end
