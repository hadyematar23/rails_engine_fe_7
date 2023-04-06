require 'rails_helper'

RSpec.describe "FindMerchants", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/find_merchant/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/find_merchant/show"
      expect(response).to have_http_status(:success)
    end
  end

end
