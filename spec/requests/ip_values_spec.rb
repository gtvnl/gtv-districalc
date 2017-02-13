require 'rails_helper'

RSpec.describe "IpValues", type: :request do
  describe "GET /ip_values" do
    it "works! (now write some real specs)" do
      get ip_values_path
      expect(response).to have_http_status(200)
    end
  end
end
