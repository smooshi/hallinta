require 'rails_helper'

RSpec.describe "agreements/new", type: :view do
  before(:each) do
    assign(:agreement, Agreement.new(
      :restaurant_id => 1,
      :user_id => 1,
      :agreement_length => 1,
      :term_of_notice_in_months => "",
      :responsible_user_id => 1,
      :invoicing_period_length => 1,
      :invoicing_payment_time => 1,
      :invoicing_date => 1,
      :signed_by_customer => false
    ))
  end

  it "renders new agreement form" do
    render

    assert_select "form[action=?][method=?]", agreements_path, "post" do

      assert_select "input#agreement_restaurant_id[name=?]", "agreement[restaurant_id]"

      assert_select "input#agreement_user_id[name=?]", "agreement[user_id]"

      assert_select "input#agreement_agreement_length[name=?]", "agreement[agreement_length]"

      assert_select "input#agreement_term_of_notice_in_months[name=?]", "agreement[term_of_notice_in_months]"

      assert_select "input#agreement_responsible_user_id[name=?]", "agreement[responsible_user_id]"

      assert_select "input#agreement_invoicing_period_length[name=?]", "agreement[invoicing_period_length]"

      assert_select "input#agreement_invoicing_payment_time[name=?]", "agreement[invoicing_payment_time]"

      assert_select "input#agreement_invoicing_date[name=?]", "agreement[invoicing_date]"

      assert_select "input#agreement_signed_by_customer[name=?]", "agreement[signed_by_customer]"
    end
  end
end
