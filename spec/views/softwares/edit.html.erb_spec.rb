require 'rails_helper'

RSpec.describe "softwares/edit", type: :view do
  before(:each) do
    @software = assign(:software, Software.create!(
      :name => "MyString",
      :addon => false,
      :BEL_price => 1,
      :price => 1,
      :identifier => "MyString"
    ))
  end

  it "renders the edit software form" do
    render

    assert_select "form[action=?][method=?]", software_path(@software), "post" do

      assert_select "input#software_name[name=?]", "software[name]"

      assert_select "input#software_addon[name=?]", "software[addon]"

      assert_select "input#software_BEL_price[name=?]", "software[BEL_price]"

      assert_select "input#software_price[name=?]", "software[price]"

      assert_select "input#software_identifier[name=?]", "software[identifier]"
    end
  end
end
