require 'rails_helper'

RSpec.describe "softwares/index", type: :view do
  before(:each) do
    assign(:softwares, [
      Software.create!(
        :name => "Name",
        :addon => false,
        :BEL_price => 1,
        :price => 2,
        :identifier => "Identifier"
      ),
      Software.create!(
        :name => "Name",
        :addon => false,
        :BEL_price => 1,
        :price => 2,
        :identifier => "Identifier"
      )
    ])
  end

  it "renders a list of softwares" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
  end
end
