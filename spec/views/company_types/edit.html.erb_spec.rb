require 'rails_helper'

RSpec.describe "company_types/edit", type: :view do
  before(:each) do
    @company_type = assign(:company_type, CompanyType.create!())
  end

  it "renders the edit company_type form" do
    render

    assert_select "form[action=?][method=?]", company_type_path(@company_type), "post" do
    end
  end
end
