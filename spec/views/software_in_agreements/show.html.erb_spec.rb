require 'rails_helper'

RSpec.describe "software_in_agreements/show", type: :view do
  before(:each) do
    @software_in_agreement = assign(:software_in_agreement, SoftwareInAgreement.create!(
      :software_id => 1,
      :agreement_id => 2,
      :monthly_price => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
