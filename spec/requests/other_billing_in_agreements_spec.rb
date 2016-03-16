require 'rails_helper'

RSpec.describe "OtherBillingInAgreements", type: :request do
  describe "GET /other_billing_in_agreements" do
    it "works! (now write some real specs)" do
      get other_billing_in_agreements_path
      expect(response).to have_http_status(200)
    end
  end
end
