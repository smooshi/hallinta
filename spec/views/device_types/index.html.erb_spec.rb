require 'rails_helper'

RSpec.describe "device_types/index", type: :view do
  before(:each) do
    assign(:device_types, [
      DeviceType.create!(
        :name => "Name",
        :warranty_length => 1,
        :total_price => 2,
        :leasing_price_per_month => 3
      ),
      DeviceType.create!(
        :name => "Name",
        :warranty_length => 1,
        :total_price => 2,
        :leasing_price_per_month => 3
      )
    ])
  end

  it "renders a list of device_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
