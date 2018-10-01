require 'rails_helper'

RSpec.describe "ItemTaxes", type: :request do
  describe "GET /item_taxes" do
    it "works! (now write some real specs)" do
      get item_taxes_path
      expect(response).to have_http_status(200)
    end
  end
end
