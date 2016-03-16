require 'rails_helper'

RSpec.describe "ContactPeople", type: :request do
  describe "GET /contact_people" do
    it "works! (now write some real specs)" do
      get contact_people_path
      expect(response).to have_http_status(200)
    end
  end
end
