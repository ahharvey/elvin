class CreateGroupas < ActiveRecord::Migration
  def change
    create_table :groupas do |t|
      t.string :name
      t.references :order

      t.timestamps
    end
    add_index :groupas, :order_id
  end
end
