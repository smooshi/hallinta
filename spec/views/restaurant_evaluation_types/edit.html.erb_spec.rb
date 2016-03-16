require 'rails_helper'

RSpec.describe "restaurant_evaluation_types/edit", type: :view do
  before(:each) do
    @restaurant_evaluation_type = assign(:restaurant_evaluation_type, RestaurantEvaluationType.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit restaurant_evaluation_type form" do
    render

    assert_select "form[action=?][method=?]", restaurant_evaluation_type_path(@restaurant_evaluation_type), "post" do

      assert_select "input#restaurant_evaluation_type_name[name=?]", "restaurant_evaluation_type[name]"

      assert_select "textarea#restaurant_evaluation_type_description[name=?]", "restaurant_evaluation_type[description]"
    end
  end
end
