class AddMultipleThingsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shipped_date, :string
    add_monetize :orders, :amount
    add_reference :orders, :user, foreign_key: true
  end
end
