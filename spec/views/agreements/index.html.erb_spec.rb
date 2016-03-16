require 'rails_helper'

RSpec.describe "agreements/index", type: :view do
  before(:each) do
    assign(:agreements, [
      Agreement.create!(
        :restaurant_id => 1,
        :user_id => 2,
        :agreement_length => 3,
        :term_of_notice_in_months => "",
        :responsible_user_id => 4,
        :invoicing_period_length => 5,
        :invoicing_payment_time => 6,
        :invoicing_date => 7,
        :signed_by_customer => false
      ),
      Agreement.create!(
        :restaurant_id => 1,
        :user_id => 2,
        :agreement_length => 3,
        :term_of_notice_in_months => "",
        :responsible_user_id => 4,
        :invoicing_period_length => 5,
        :invoicing_payment_time => 6,
        :invoicing_date => 7,
        :signed_by_customer => false
      )
    ])
  end

  it "renders a list of agreements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
