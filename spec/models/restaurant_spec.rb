require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  let(:restaurant_type){ FactoryGirl.create(:restaurant_type)}
  let(:restaurant){ FactoryGirl.create(:restaurant)}
  let(:contact_person){ FactoryGirl.create(:contact_person)}

  describe "it is created" do

    it "is saved" do
      expect(restaurant).to be_valid
      expect(Restaurant.count).to eq(1)
    end

    it "has name" do
      expect(restaurant.name).to eq("Rest")
    end

    it "has email" do
      expect(restaurant.email).to eq("email@email.com")
    end

    it "is type" do
      expect(restaurant_type).to be_valid
      expect(RestaurantType.count).to eq(1)
    end

    it "type name" do
      expect(restaurant_type.name).to eq("Big")
    end

    it "correct type" do
      expect(restaurant.restaurant_type_id).to eq(restaurant_type.id)
    end

    it "has company_id" do
      expect(restaurant.company_id).to eq(1)
    end

    it "has restaurant_id" do
      expect(restaurant.id).to eq(1)
    end

  end
end
