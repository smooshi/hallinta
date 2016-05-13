require 'rails_helper'

RSpec.describe RestaurantEvaluationType, type: :model do
  let(:restaurant_evaluation_type){ FactoryGirl.create(:restaurant_evaluation_type)}

  describe " is created" do

    it "is saved" do
      expect(restaurant_evaluation_type).to be_valid
      expect(RestaurantEvaluationType.count).to eq(1)
    end
  end
end
