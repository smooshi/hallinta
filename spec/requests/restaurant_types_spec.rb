require 'rails_helper'

RSpec.describe "RestaurantTypes", type: :request do
  describe "GET /restaurant_types" do
    it "works! (now write some real specs)" do
      get restaurant_types_path
      expect(response).to have_http_status(200)
    end
  end
end
