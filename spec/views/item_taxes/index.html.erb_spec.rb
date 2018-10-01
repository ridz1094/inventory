require 'rails_helper'

RSpec.describe "item_taxes/index", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    @item = assign(:item, Item.create!(name: "Item1", item_category_id: @item_category.id))
    assign(:item_taxes, [
      ItemTax.create!(item_id: @item.id, tax_type: "percentage", tax: 10.00),
      ItemTax.create!(item_id: @item.id, tax_type: "percentage", tax: 10.00)
    ])
  end

  it "renders a list of item_taxes" do
    render
  end
end
