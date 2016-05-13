require 'rails_helper'

RSpec.describe "restaurant_types/index", type: :view do
  before(:each) do
    assign(:restaurant_types, [
      RestaurantType.create!(),
      RestaurantType.create!()
    ])
  end

  it "renders a list of restaurant_types" do
    render
  end
end
