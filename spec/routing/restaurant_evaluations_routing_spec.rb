require "rails_helper"

RSpec.describe RestaurantEvaluationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restaurant_evaluations").to route_to("restaurant_evaluations#index")
    end

    it "routes to #new" do
      expect(:get => "/restaurant_evaluations/new").to route_to("restaurant_evaluations#new")
    end

    it "routes to #show" do
      expect(:get => "/restaurant_evaluations/1").to route_to("restaurant_evaluations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restaurant_evaluations/1/edit").to route_to("restaurant_evaluations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/restaurant_evaluations").to route_to("restaurant_evaluations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant_evaluations/1").to route_to("restaurant_evaluations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant_evaluations/1").to route_to("restaurant_evaluations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant_evaluations/1").to route_to("restaurant_evaluations#destroy", :id => "1")
    end

  end
end
