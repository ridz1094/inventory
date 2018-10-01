require 'rails_helper'

RSpec.describe "item_taxes/new", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    assign(:item_tax, ItemTax.new())
    assign(:items, [
      Item.create!(name: "Item1", item_category_id: @item_category.id),
      Item.create!(name: "Item2", item_category_id: @item_category.id)
    ])
  end

  it "renders new item_tax form" do
    render

    assert_select "form[action=?][method=?]", item_taxes_path, "post" do
    end
  end
end
