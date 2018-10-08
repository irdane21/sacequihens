class AddLineToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phonenumber, :string
    add_column :users, :addressfirstline, :text
    add_column :users, :addresssecondline, :text
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
  end
end
