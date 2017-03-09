require 'rails_helper'

RSpec.describe "Posities", type: :request do
  describe "GET /posities" do
    it "works! (now write some real specs)" do
      get posities_path
      expect(response).to have_http_status(200)
    end
  end
end
