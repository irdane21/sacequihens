class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.text :description
      t.text :detailtechniques

      t.timestamps
    end
  end
end
