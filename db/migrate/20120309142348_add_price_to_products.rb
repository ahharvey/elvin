class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal, :precision => 12, :scale => 2
  end
end
