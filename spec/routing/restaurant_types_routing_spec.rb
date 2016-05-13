require "rails_helper"

RSpec.describe RestaurantTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restaurant_types").to route_to("restaurant_types#index")
    end

    it "routes to #new" do
      expect(:get => "/restaurant_types/new").to route_to("restaurant_types#new")
    end

    it "routes to #show" do
      expect(:get => "/restaurant_types/1").to route_to("restaurant_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restaurant_types/1/edit").to route_to("restaurant_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/restaurant_types").to route_to("restaurant_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant_types/1").to route_to("restaurant_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant_types/1").to route_to("restaurant_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant_types/1").to route_to("restaurant_types#destroy", :id => "1")
    end

  end
end
