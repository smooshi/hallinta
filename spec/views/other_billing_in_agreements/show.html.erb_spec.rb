require 'rails_helper'

RSpec.describe "other_billing_in_agreements/show", type: :view do
  before(:each) do
    @other_billing_in_agreement = assign(:other_billing_in_agreement, OtherBillingInAgreement.create!(
      :agreement_id => 1,
      :description => "MyText",
      :total_price => 2,
      :monthly_price => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
