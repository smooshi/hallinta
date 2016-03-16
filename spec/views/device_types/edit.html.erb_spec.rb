require 'rails_helper'

RSpec.describe "device_types/edit", type: :view do
  before(:each) do
    @device_type = assign(:device_type, DeviceType.create!(
      :name => "MyString",
      :warranty_length => 1,
      :total_price => 1,
      :leasing_price_per_month => 1
    ))
  end

  it "renders the edit device_type form" do
    render

    assert_select "form[action=?][method=?]", device_type_path(@device_type), "post" do

      assert_select "input#device_type_name[name=?]", "device_type[name]"

      assert_select "input#device_type_warranty_length[name=?]", "device_type[warranty_length]"

      assert_select "input#device_type_total_price[name=?]", "device_type[total_price]"

      assert_select "input#device_type_leasing_price_per_month[name=?]", "device_type[leasing_price_per_month]"
    end
  end
end
