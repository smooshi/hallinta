require "rails_helper"

RSpec.describe OtherBillingInAgreementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/other_billing_in_agreements").to route_to("other_billing_in_agreements#index")
    end

    it "routes to #new" do
      expect(:get => "/other_billing_in_agreements/new").to route_to("other_billing_in_agreements#new")
    end

    it "routes to #show" do
      expect(:get => "/other_billing_in_agreements/1").to route_to("other_billing_in_agreements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/other_billing_in_agreements/1/edit").to route_to("other_billing_in_agreements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/other_billing_in_agreements").to route_to("other_billing_in_agreements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/other_billing_in_agreements/1").to route_to("other_billing_in_agreements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/other_billing_in_agreements/1").to route_to("other_billing_in_agreements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/other_billing_in_agreements/1").to route_to("other_billing_in_agreements#destroy", :id => "1")
    end

  end
end
