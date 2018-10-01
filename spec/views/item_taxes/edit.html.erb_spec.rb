require 'rails_helper'

RSpec.describe "item_taxes/edit", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    @item = assign(:item, Item.create!(name: "Item1", item_category_id: @item_category.id))
    @item_tax = assign(:item_tax, ItemTax.create!(item_id: @item.id, tax_type: "percentage", tax: 10.00))
    assign(:items, [
      Item.create!(name: "Item1", item_category_id: @item_category.id),
      Item.create!(name: "Item2", item_category_id: @item_category.id)
    ])
  end

  it "renders the edit item_tax form" do
    render

    assert_select "form[action=?][method=?]", item_tax_path(@item_tax), "post" do
    end
  end
end
