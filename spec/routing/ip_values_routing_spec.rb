require "rails_helper"

RSpec.describe IpValuesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ip_values").to route_to("ip_values#index")
    end

    it "routes to #new" do
      expect(:get => "/ip_values/new").to route_to("ip_values#new")
    end

    it "routes to #show" do
      expect(:get => "/ip_values/1").to route_to("ip_values#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ip_values/1/edit").to route_to("ip_values#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ip_values").to route_to("ip_values#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ip_values/1").to route_to("ip_values#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ip_values/1").to route_to("ip_values#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ip_values/1").to route_to("ip_values#destroy", :id => "1")
    end

  end
end
