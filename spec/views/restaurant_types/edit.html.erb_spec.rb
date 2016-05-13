require 'rails_helper'

RSpec.describe "restaurant_types/edit", type: :view do
  before(:each) do
    @restaurant_type = assign(:restaurant_type, RestaurantType.create!())
  end

  it "renders the edit restaurant_type form" do
    render

    assert_select "form[action=?][method=?]", restaurant_type_path(@restaurant_type), "post" do
    end
  end
end
