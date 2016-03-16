require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :restaurant_id => 1
      ),
      Customer.create!(
        :restaurant_id => 1
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
