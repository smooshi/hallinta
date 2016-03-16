require 'rails_helper'

RSpec.describe "device_in_agreements/show", type: :view do
  before(:each) do
    @device_in_agreement = assign(:device_in_agreement, DeviceInAgreement.create!(
      :agreement_id => 1,
      :device_id => 2,
      :price_is_leasing => false,
      :total_price => 3,
      :monthly_price => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
