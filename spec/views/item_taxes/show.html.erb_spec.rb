require 'rails_helper'

RSpec.describe "item_taxes/show", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    @item = assign(:item, Item.create!(name: "Item1", item_category_id: @item_category.id))
    @item_tax = assign(:item_tax, ItemTax.create!(item_id: @item.id, tax_type: "percentage", tax: 10.00))
  end

  it "renders attributes in <p>" do
    render
  end
end
