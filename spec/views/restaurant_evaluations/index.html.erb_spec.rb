require 'rails_helper'

RSpec.describe "restaurant_evaluations/index", type: :view do
  before(:each) do
    assign(:restaurant_evaluations, [
      RestaurantEvaluation.create!(
        :restaurant_id => 1,
        :company_id => 2,
        :restaurant_evaluation_type_id => 3,
        :value => 4,
        :evaluation_by_user => 5,
        :evaluation_comment => "MyText"
      ),
      RestaurantEvaluation.create!(
        :restaurant_id => 1,
        :company_id => 2,
        :restaurant_evaluation_type_id => 3,
        :value => 4,
        :evaluation_by_user => 5,
        :evaluation_comment => "MyText"
      )
    ])
  end

  it "renders a list of restaurant_evaluations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
