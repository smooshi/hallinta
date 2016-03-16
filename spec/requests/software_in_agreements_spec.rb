require 'rails_helper'

RSpec.describe "SoftwareInAgreements", type: :request do
  describe "GET /software_in_agreements" do
    it "works! (now write some real specs)" do
      get software_in_agreements_path
      expect(response).to have_http_status(200)
    end
  end
end
