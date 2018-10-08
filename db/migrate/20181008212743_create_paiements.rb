class CreatePaiements < ActiveRecord::Migration[5.2]
  def change
    create_table :paiements do |t|
      t.jsonb :payment
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
