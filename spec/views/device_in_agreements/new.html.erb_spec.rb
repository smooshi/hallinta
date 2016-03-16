require 'rails_helper'

RSpec.describe "device_in_agreements/new", type: :view do
  before(:each) do
    assign(:device_in_agreement, DeviceInAgreement.new(
      :agreement_id => 1,
      :device_id => 1,
      :price_is_leasing => false,
      :total_price => 1,
      :monthly_price => 1
    ))
  end

  it "renders new device_in_agreement form" do
    render

    assert_select "form[action=?][method=?]", device_in_agreements_path, "post" do

      assert_select "input#device_in_agreement_agreement_id[name=?]", "device_in_agreement[agreement_id]"

      assert_select "input#device_in_agreement_device_id[name=?]", "device_in_agreement[device_id]"

      assert_select "input#device_in_agreement_price_is_leasing[name=?]", "device_in_agreement[price_is_leasing]"

      assert_select "input#device_in_agreement_total_price[name=?]", "device_in_agreement[total_price]"

      assert_select "input#device_in_agreement_monthly_price[name=?]", "device_in_agreement[monthly_price]"
    end
  end
end