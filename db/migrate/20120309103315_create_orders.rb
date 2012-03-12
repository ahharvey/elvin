class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
