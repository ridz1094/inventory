require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    assign(:item_categories, [ @item_category ])
    @item = assign(:item, Item.create!(name: "Item1", item_category_id: @item_category.id))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do
    end
  end
end
