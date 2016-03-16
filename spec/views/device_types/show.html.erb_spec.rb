require 'rails_helper'

RSpec.describe "device_types/show", type: :view do
  before(:each) do
    @device_type = assign(:device_type, DeviceType.create!(
      :name => "Name",
      :warranty_length => 1,
      :total_price => 2,
      :leasing_price_per_month => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
