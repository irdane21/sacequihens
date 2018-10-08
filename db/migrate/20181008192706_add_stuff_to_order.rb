class AddStuffToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :status, :integer
    add_column :orders, :shippeddate, :string
    add_column :orders, :amount, :monetize
    add_references :orders, :users, foreign_key: true
  end
end
