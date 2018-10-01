require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should belong_to(:item_category) }
  it { should validate_presence_of(:name) }
end
