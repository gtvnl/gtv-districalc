require "rails_helper"

RSpec.describe PositiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/posities").to route_to("posities#index")
    end

    it "routes to #new" do
      expect(:get => "/posities/new").to route_to("posities#new")
    end

    it "routes to #show" do
      expect(:get => "/posities/1").to route_to("posities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/posities/1/edit").to route_to("posities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/posities").to route_to("posities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/posities/1").to route_to("posities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/posities/1").to route_to("posities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/posities/1").to route_to("posities#destroy", :id => "1")
    end

  end
end
