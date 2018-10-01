require 'rails_helper'

RSpec.describe "item_categories/new", type: :view do
  before(:each) do
    assign(:item_category, ItemCategory.new())
  end

  it "renders new item_category form" do
    render

    assert_select "form[action=?][method=?]", item_categories_path, "post" do
    end
  end
end
