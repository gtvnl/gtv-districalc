require 'rails_helper'

RSpec.describe "PositieItems", type: :request do
  describe "GET /positie_items" do
    it "works! (now write some real specs)" do
      get positie_items_path
      expect(response).to have_http_status(200)
    end
  end
end
