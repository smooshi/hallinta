require 'rails_helper'

RSpec.describe "company_types/index", type: :view do
  before(:each) do
    assign(:company_types, [
      CompanyType.create!(),
      CompanyType.create!()
    ])
  end

  it "renders a list of company_types" do
    render
  end
end
