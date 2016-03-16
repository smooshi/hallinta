require "rails_helper"

RSpec.describe ContactPeopleController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_people").to route_to("contact_people#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_people/new").to route_to("contact_people#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_people/1").to route_to("contact_people#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_people/1/edit").to route_to("contact_people#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_people").to route_to("contact_people#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_people/1").to route_to("contact_people#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_people/1").to route_to("contact_people#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_people/1").to route_to("contact_people#destroy", :id => "1")
    end

  end
end
