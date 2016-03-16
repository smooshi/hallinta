require 'rails_helper'

RSpec.describe "other_billing_in_agreements/new", type: :view do
  before(:each) do
    assign(:other_billing_in_agreement, OtherBillingInAgreement.new(
      :agreement_id => 1,
      :description => "MyText",
      :total_price => 1,
      :monthly_price => 1
    ))
  end

  it "renders new other_billing_in_agreement form" do
    render

    assert_select "form[action=?][method=?]", other_billing_in_agreements_path, "post" do

      assert_select "input#other_billing_in_agreement_agreement_id[name=?]", "other_billing_in_agreement[agreement_id]"

      assert_select "textarea#other_billing_in_agreement_description[name=?]", "other_billing_in_agreement[description]"

      assert_select "input#other_billing_in_agreement_total_price[name=?]", "other_billing_in_agreement[total_price]"

      assert_select "input#other_billing_in_agreement_monthly_price[name=?]", "other_billing_in_agreement[monthly_price]"
    end
  end
end
