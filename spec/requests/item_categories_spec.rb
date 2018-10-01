require 'rails_helper'

RSpec.describe "ItemCategories", type: :request do
  describe "GET /item_categories" do
    it "works! (now write some real specs)" do
      get item_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
