require 'rails_helper'

RSpec.describe "softwares/new", type: :view do
  before(:each) do
    assign(:software, Software.new(
      :name => "MyString",
      :addon => false,
      :BEL_price => 1,
      :price => 1,
      :identifier => "MyString"
    ))
  end

  it "renders new software form" do
    render

    assert_select "form[action=?][method=?]", softwares_path, "post" do

      assert_select "input#software_name[name=?]", "software[name]"

      assert_select "input#software_addon[name=?]", "software[addon]"

      assert_select "input#software_BEL_price[name=?]", "software[BEL_price]"

      assert_select "input#software_price[name=?]", "software[price]"

      assert_select "input#software_identifier[name=?]", "software[identifier]"
    end
  end
end
