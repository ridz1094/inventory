class Item < ApplicationRecord
  belongs_to :item_category
  has_many :item_taxes
  validates :name, presence: true

  TAX_TYPE_PERCENTAGE = "percentage"
  TAX_TYPE_VALUE = "value"
end
