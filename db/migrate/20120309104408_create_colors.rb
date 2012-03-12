class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.references :ordered_product

      t.timestamps
    end
    add_index :colors, :ordered_product_id
  end
end
