require 'rails_helper'

RSpec.describe "restaurant_evaluations/show", type: :view do
  before(:each) do
    @restaurant_evaluation = assign(:restaurant_evaluation, RestaurantEvaluation.create!(
      :restaurant_id => 1,
      :company_id => 2,
      :restaurant_evaluation_type_id => 3,
      :value => 4,
      :evaluation_by_user => 5,
      :evaluation_comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/MyText/)
  end
end
