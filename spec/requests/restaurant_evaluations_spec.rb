require 'rails_helper'

RSpec.describe "RestaurantEvaluations", type: :request do
  describe "GET /restaurant_evaluations" do
    it "works! (now write some real specs)" do
      get restaurant_evaluations_path
      expect(response).to have_http_status(200)
    end
  end
end
