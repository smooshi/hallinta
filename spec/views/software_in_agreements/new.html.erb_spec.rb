require 'rails_helper'

RSpec.describe "software_in_agreements/new", type: :view do
  before(:each) do
    assign(:software_in_agreement, SoftwareInAgreement.new(
      :software_id => 1,
      :agreement_id => 1,
      :monthly_price => 1
    ))
  end

  it "renders new software_in_agreement form" do
    render

    assert_select "form[action=?][method=?]", software_in_agreements_path, "post" do

      assert_select "input#software_in_agreement_software_id[name=?]", "software_in_agreement[software_id]"

      assert_select "input#software_in_agreement_agreement_id[name=?]", "software_in_agreement[agreement_id]"

      assert_select "input#software_in_agreement_monthly_price[name=?]", "software_in_agreement[monthly_price]"
    end
  end
end
