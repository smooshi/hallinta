require 'rails_helper'

RSpec.describe "software_in_agreements/index", type: :view do
  before(:each) do
    assign(:software_in_agreements, [
      SoftwareInAgreement.create!(
        :software_id => 1,
        :agreement_id => 2,
        :monthly_price => 3
      ),
      SoftwareInAgreement.create!(
        :software_id => 1,
        :agreement_id => 2,
        :monthly_price => 3
      )
    ])
  end

  it "renders a list of software_in_agreements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
