class CreateItemTaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :item_taxes do |t|
      t.integer :tax_type
      t.float :tax
      t.references :item, index: true, null: false
      t.timestamps
    end
  end
end
