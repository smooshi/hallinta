require 'rails_helper'

RSpec.describe "device_in_agreements/index", type: :view do
  before(:each) do
    assign(:device_in_agreements, [
      DeviceInAgreement.create!(
        :agreement_id => 1,
        :device_id => 2,
        :price_is_leasing => false,
        :total_price => 3,
        :monthly_price => 4
      ),
      DeviceInAgreement.create!(
        :agreement_id => 1,
        :device_id => 2,
        :price_is_leasing => false,
        :total_price => 3,
        :monthly_price => 4
      )
    ])
  end

  it "renders a list of device_in_agreements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
