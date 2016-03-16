require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :device_type_id => 1,
      :is_leased => false,
      :full_price => 1,
      :leasing_price => 1,
      :leasing_length => 1,
      :identifier => "MyString",
      :rental_device => false
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input#device_device_type_id[name=?]", "device[device_type_id]"

      assert_select "input#device_is_leased[name=?]", "device[is_leased]"

      assert_select "input#device_full_price[name=?]", "device[full_price]"

      assert_select "input#device_leasing_price[name=?]", "device[leasing_price]"

      assert_select "input#device_leasing_length[name=?]", "device[leasing_length]"

      assert_select "input#device_identifier[name=?]", "device[identifier]"

      assert_select "input#device_rental_device[name=?]", "device[rental_device]"
    end
  end
end
