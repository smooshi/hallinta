require 'rails_helper'

RSpec.describe RestaurantType, type: :model do
  let(:restaurant_type){ FactoryGirl.create(:restaurant_type)}
  describe "it is created" do

    it "is saved" do
      expect(restaurant_type).to be_valid
      expect(RestaurantType.count).to eq(1)
    end
  end
end