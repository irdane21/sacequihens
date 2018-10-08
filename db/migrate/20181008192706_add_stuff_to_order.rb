class AddStuffToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :status, :integer
    add_column :orders, :shippeddate, :string
    add_monertize :orders, :amount
    add_reference :orders, :user, foreign_key: true
  end
end
