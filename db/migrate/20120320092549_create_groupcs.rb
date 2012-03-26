class CreateGroupcs < ActiveRecord::Migration
  def change
    create_table :groupcs do |t|
      t.string :name
      t.references :order

      t.timestamps
    end
    add_index :groupcs, :order_id
  end
end
