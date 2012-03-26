class CreateGroupaUsers < ActiveRecord::Migration
  def change
    create_table :groupa_users do |t|
      t.references :groupa
      t.references :user

      t.timestamps
    end
    add_index :groupa_users, :groupa_id
    add_index :groupa_users, :user_id
  end
end
