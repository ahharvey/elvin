class CreateGroupbUsers < ActiveRecord::Migration
  def change
    create_table :groupb_users do |t|
      t.references :groupb
      t.references :user

      t.timestamps
    end
    add_index :groupb_users, :groupb_id
    add_index :groupb_users, :user_id
  end
end
