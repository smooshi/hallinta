require 'rails_helper'

RSpec.describe "software_in_agreements/edit", type: :view do
  before(:each) do
    @software_in_agreement = assign(:software_in_agreement, SoftwareInAgreement.create!(
      :software_id => 1,
      :agreement_id => 1,
      :monthly_price => 1
    ))
  end

  it "renders the edit software_in_agreement form" do
    render

    assert_select "form[action=?][method=?]", software_in_agreement_path(@software_in_agreement), "post" do

      assert_select "input#software_in_agreement_software_id[name=?]", "software_in_agreement[software_id]"

      assert_select "input#software_in_agreement_agreement_id[name=?]", "software_in_agreement[agreement_id]"

      assert_select "input#software_in_agreement_monthly_price[name=?]", "software_in_agreement[monthly_price]"
    end
  end
end
