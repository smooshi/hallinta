require 'rails_helper'

RSpec.describe "restaurant_evaluation_types/new", type: :view do
  before(:each) do
    assign(:restaurant_evaluation_type, RestaurantEvaluationType.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new restaurant_evaluation_type form" do
    render

    assert_select "form[action=?][method=?]", restaurant_evaluation_types_path, "post" do

      assert_select "input#restaurant_evaluation_type_name[name=?]", "restaurant_evaluation_type[name]"

      assert_select "textarea#restaurant_evaluation_type_description[name=?]", "restaurant_evaluation_type[description]"
    end
  end
end
