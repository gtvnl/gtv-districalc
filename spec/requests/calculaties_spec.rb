require 'rails_helper'

RSpec.describe "Calculaties", type: :request do
  describe "GET /calculaties" do
    it "works! (now write some real specs)" do
      get calculaties_path
      expect(response).to have_http_status(200)
    end
  end
end
