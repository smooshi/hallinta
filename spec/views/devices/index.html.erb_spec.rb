require 'rails_helper'

RSpec.describe "devices/index", type: :view do
  before(:each) do
    assign(:devices, [
      Device.create!(
        :device_type_id => 1,
        :is_leased => false,
        :full_price => 2,
        :leasing_price => 3,
        :leasing_length => 4,
        :identifier => "Identifier",
        :rental_device => false
      ),
      Device.create!(
        :device_type_id => 1,
        :is_leased => false,
        :full_price => 2,
        :leasing_price => 3,
        :leasing_length => 4,
        :identifier => "Identifier",
        :rental_device => false
      )
    ])
  end

  it "renders a list of devices" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
