class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :product_sku
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.monetize :price_each

      t.timestamps
    end
  end
end
