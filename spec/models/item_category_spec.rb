require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  it { should validate_presence_of(:name) }
end
