require 'rails_helper'

RSpec.describe "company_types/new", type: :view do
  before(:each) do
    assign(:company_type, CompanyType.new())
  end

  it "renders new company_type form" do
    render

    assert_select "form[action=?][method=?]", company_types_path, "post" do
    end
  end
end
