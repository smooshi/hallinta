require "rails_helper"

RSpec.describe SoftwareInAgreementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/software_in_agreements").to route_to("software_in_agreements#index")
    end

    it "routes to #new" do
      expect(:get => "/software_in_agreements/new").to route_to("software_in_agreements#new")
    end

    it "routes to #show" do
      expect(:get => "/software_in_agreements/1").to route_to("software_in_agreements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/software_in_agreements/1/edit").to route_to("software_in_agreements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/software_in_agreements").to route_to("software_in_agreements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/software_in_agreements/1").to route_to("software_in_agreements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/software_in_agreements/1").to route_to("software_in_agreements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/software_in_agreements/1").to route_to("software_in_agreements#destroy", :id => "1")
    end

  end
end
