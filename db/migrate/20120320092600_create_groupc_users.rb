class CreateGroupcUsers < ActiveRecord::Migration
  def change
    create_table :groupc_users do |t|
      t.references :groupc
      t.references :user

      t.timestamps
    end
    add_index :groupc_users, :groupc_id
    add_index :groupc_users, :user_id
  end
end
