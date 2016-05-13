require 'rails_helper'

RSpec.describe RestaurantEvaluation, type: :model do
  let(:restaurant_evaluation){ FactoryGirl.create(:restaurant_evaluation)}

  describe " is created" do

    it "is saved" do
      expect(restaurant_evaluation).to be_valid
      expect(RestaurantEvaluation.count).to eq(1)
    end

    it "has company_id" do
      expect(restaurant_evaluation.company_id).to eq(1)
    end

    it "has restaurant_id" do
      expect(restaurant_evaluation.restaurant_id).to eq(1)
    end

    it "has value" do
      expect(restaurant_evaluation.value).to eq(1)
    end

    it "has user_id" do
      expect(restaurant_evaluation.user_id).to eq(1)
    end
  end
end
