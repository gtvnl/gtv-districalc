require "rails_helper"

RSpec.describe CalculatiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/calculaties").to route_to("calculaties#index")
    end

    it "routes to #new" do
      expect(:get => "/calculaties/new").to route_to("calculaties#new")
    end

    it "routes to #show" do
      expect(:get => "/calculaties/1").to route_to("calculaties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/calculaties/1/edit").to route_to("calculaties#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/calculaties").to route_to("calculaties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/calculaties/1").to route_to("calculaties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/calculaties/1").to route_to("calculaties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/calculaties/1").to route_to("calculaties#destroy", :id => "1")
    end

  end
end
