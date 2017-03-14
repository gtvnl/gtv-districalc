require "rails_helper"

RSpec.describe PositieItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/positie_items").to route_to("positie_items#index")
    end

    it "routes to #new" do
      expect(:get => "/positie_items/new").to route_to("positie_items#new")
    end

    it "routes to #show" do
      expect(:get => "/positie_items/1").to route_to("positie_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/positie_items/1/edit").to route_to("positie_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/positie_items").to route_to("positie_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/positie_items/1").to route_to("positie_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/positie_items/1").to route_to("positie_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/positie_items/1").to route_to("positie_items#destroy", :id => "1")
    end

  end
end
