require 'rails_helper'

RSpec.describe "item_categories/index", type: :view do
  before(:each) do
    assign(:item_categories, [
      ItemCategory.create!(name: "A"),
      ItemCategory.create!(name: "B")
    ])
  end

  it "renders a list of item_categories" do
    render
  end
end
