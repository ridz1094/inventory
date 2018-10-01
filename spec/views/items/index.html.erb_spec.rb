require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    assign(:items, [
      Item.create!(name: "Item1", item_category_id: @item_category.id),
      Item.create!(name: "Item2", item_category_id: @item_category.id)
    ])
  end

  it "renders a list of items" do
    render
  end
end
