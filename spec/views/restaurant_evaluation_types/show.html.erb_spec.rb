require 'rails_helper'

RSpec.describe "restaurant_evaluation_types/show", type: :view do
  before(:each) do
    @restaurant_evaluation_type = assign(:restaurant_evaluation_type, RestaurantEvaluationType.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
