require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    @item = assign(:item, Item.create!(name: "Item1", item_category_id: @item_category.id))
  end

  it "renders attributes in <p>" do
    render
  end
end
