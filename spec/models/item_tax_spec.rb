require 'rails_helper'

RSpec.describe ItemTax, type: :model do
  it { should belong_to(:item) }
  it { should validate_presence_of(:tax_type) }
  it { should validate_presence_of(:tax) }
end
