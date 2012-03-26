class CreateGroupbs < ActiveRecord::Migration
  def change
    create_table :groupbs do |t|
      t.string :name
      t.references :order

      t.timestamps
    end
    add_index :groupbs, :order_id
  end
end
