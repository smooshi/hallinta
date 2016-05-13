require 'rails_helper'

RSpec.describe "restaurant_types/show", type: :view do
  before(:each) do
    @restaurant_type = assign(:restaurant_type, RestaurantType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
