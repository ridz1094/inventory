require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
    assign(:item_categories, [ @item_category ])
    assign(:item, Item.new())
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do
    end
  end
end
