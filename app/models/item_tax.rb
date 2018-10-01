class ItemTax < ApplicationRecord
  belongs_to :item
  validates_presence_of :tax_type
  validates_presence_of :tax
  enum tax_type: [:percentage, :value]
end
