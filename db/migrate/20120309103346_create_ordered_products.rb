class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|
      t.references :product
      t.references :order
      t.integer :quantity

      t.timestamps
    end
    add_index :ordered_products, :product_id
    add_index :ordered_products, :order_id
  end
end
