require 'rails_helper'

RSpec.describe "agreements/show", type: :view do
  before(:each) do
    @agreement = assign(:agreement, Agreement.create!(
      :restaurant_id => 1,
      :user_id => 2,
      :agreement_length => 3,
      :term_of_notice_in_months => "",
      :responsible_user_id => 4,
      :invoicing_period_length => 5,
      :invoicing_payment_time => 6,
      :invoicing_date => 7,
      :signed_by_customer => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/false/)
  end
end
