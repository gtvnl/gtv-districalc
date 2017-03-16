require "rails_helper"

RSpec.describe OffertesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/offertes").to route_to("offertes#index")
    end

    it "routes to #new" do
      expect(:get => "/offertes/new").to route_to("offertes#new")
    end

    it "routes to #show" do
      expect(:get => "/offertes/1").to route_to("offertes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/offertes/1/edit").to route_to("offertes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/offertes").to route_to("offertes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/offertes/1").to route_to("offertes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/offertes/1").to route_to("offertes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/offertes/1").to route_to("offertes#destroy", :id => "1")
    end

  end
end
