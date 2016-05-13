require 'rails_helper'

RSpec.describe "restaurant_types/new", type: :view do
  before(:each) do
    assign(:restaurant_type, RestaurantType.new())
  end

  it "renders new restaurant_type form" do
    render

    assert_select "form[action=?][method=?]", restaurant_types_path, "post" do
    end
  end
end
