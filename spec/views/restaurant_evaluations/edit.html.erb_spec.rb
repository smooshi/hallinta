require 'rails_helper'

RSpec.describe "restaurant_evaluations/edit", type: :view do
  before(:each) do
    @restaurant_evaluation = assign(:restaurant_evaluation, RestaurantEvaluation.create!(
      :restaurant_id => 1,
      :company_id => 1,
      :restaurant_evaluation_type_id => 1,
      :value => 1,
      :evaluation_by_user => 1,
      :evaluation_comment => "MyText"
    ))
  end

  it "renders the edit restaurant_evaluation form" do
    render

    assert_select "form[action=?][method=?]", restaurant_evaluation_path(@restaurant_evaluation), "post" do

      assert_select "input#restaurant_evaluation_restaurant_id[name=?]", "restaurant_evaluation[restaurant_id]"

      assert_select "input#restaurant_evaluation_company_id[name=?]", "restaurant_evaluation[company_id]"

      assert_select "input#restaurant_evaluation_restaurant_evaluation_type_id[name=?]", "restaurant_evaluation[restaurant_evaluation_type_id]"

      assert_select "input#restaurant_evaluation_value[name=?]", "restaurant_evaluation[value]"

      assert_select "input#restaurant_evaluation_evaluation_by_user[name=?]", "restaurant_evaluation[evaluation_by_user]"

      assert_select "textarea#restaurant_evaluation_evaluation_comment[name=?]", "restaurant_evaluation[evaluation_comment]"
    end
  end
end
