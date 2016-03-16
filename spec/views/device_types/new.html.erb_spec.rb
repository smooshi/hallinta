require 'rails_helper'

RSpec.describe "device_types/new", type: :view do
  before(:each) do
    assign(:device_type, DeviceType.new(
      :name => "MyString",
      :warranty_length => 1,
      :total_price => 1,
      :leasing_price_per_month => 1
    ))
  end

  it "renders new device_type form" do
    render

    assert_select "form[action=?][method=?]", device_types_path, "post" do

      assert_select "input#device_type_name[name=?]", "device_type[name]"

      assert_select "input#device_type_warranty_length[name=?]", "device_type[warranty_length]"

      assert_select "input#device_type_total_price[name=?]", "device_type[total_price]"

      assert_select "input#device_type_leasing_price_per_month[name=?]", "device_type[leasing_price_per_month]"
    end
  end
end
