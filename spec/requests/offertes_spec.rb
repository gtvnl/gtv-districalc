require 'rails_helper'

RSpec.describe "Offertes", type: :request do
  describe "GET /offertes" do
    it "works! (now write some real specs)" do
      get offertes_path
      expect(response).to have_http_status(200)
    end
  end
end
