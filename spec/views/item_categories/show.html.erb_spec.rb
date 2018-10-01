require 'rails_helper'

RSpec.describe "item_categories/show", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(name: "A"))
  end

  it "renders attributes in <p>" do
    render
  end
end
