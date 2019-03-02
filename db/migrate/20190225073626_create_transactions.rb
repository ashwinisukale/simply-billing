class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :customer_name
      t.string :mobile_number
      t.string :product
      t.float :price
      t.integer :quantity
      t.float :total_amount
      t.text :description

      t.timestamps
    end
  end
end
