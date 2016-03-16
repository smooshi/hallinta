require 'rails_helper'

RSpec.describe "restaurant_evaluation_types/index", type: :view do
  before(:each) do
    assign(:restaurant_evaluation_types, [
      RestaurantEvaluationType.create!(
        :name => "Name",
        :description => "MyText"
      ),
      RestaurantEvaluationType.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of restaurant_evaluation_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
