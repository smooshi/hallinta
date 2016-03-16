require 'rails_helper'

RSpec.describe "other_billing_in_agreements/index", type: :view do
  before(:each) do
    assign(:other_billing_in_agreements, [
      OtherBillingInAgreement.create!(
        :agreement_id => 1,
        :description => "MyText",
        :total_price => 2,
        :monthly_price => 3
      ),
      OtherBillingInAgreement.create!(
        :agreement_id => 1,
        :description => "MyText",
        :total_price => 2,
        :monthly_price => 3
      )
    ])
  end

  it "renders a list of other_billing_in_agreements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
