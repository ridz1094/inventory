class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :rate
      t.references :item_category, index: true, null: false
      t.timestamps
    end
  end
end
