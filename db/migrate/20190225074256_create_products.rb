class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :company
      t.text :description
      t.integer :quantity
      t.float :buy_price
      t.float :sell_price
      t.string :location

      t.timestamps
    end
  end
end
