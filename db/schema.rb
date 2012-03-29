# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120329025814) do

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.integer  "ordered_product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colors", ["ordered_product_id"], :name => "index_colors_on_ordered_product_id"

  create_table "groupa_users", :force => true do |t|
    t.integer  "groupa_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groupa_users", ["groupa_id"], :name => "index_groupa_users_on_groupa_id"
  add_index "groupa_users", ["user_id"], :name => "index_groupa_users_on_user_id"

  create_table "groupas", :force => true do |t|
    t.string   "name"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groupas", ["order_id"], :name => "index_groupas_on_order_id"

  create_table "groupb_users", :force => true do |t|
    t.integer  "groupb_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groupb_users", ["groupb_id"], :name => "index_groupb_users_on_groupb_id"
  add_index "groupb_users", ["user_id"], :name => "index_groupb_users_on_user_id"

  create_table "groupbs", :force => true do |t|
    t.string   "name"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groupbs", ["order_id"], :name => "index_groupbs_on_order_id"

  create_table "groupc_users", :force => true do |t|
    t.integer  "groupc_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groupc_users", ["groupc_id"], :name => "index_groupc_users_on_groupc_id"
  add_index "groupc_users", ["user_id"], :name => "index_groupc_users_on_user_id"

  create_table "groupcs", :force => true do |t|
    t.string   "name"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groupcs", ["order_id"], :name => "index_groupcs_on_order_id"

  create_table "ordered_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordered_products", ["order_id"], :name => "index_ordered_products_on_order_id"
  add_index "ordered_products", ["product_id"], :name => "index_ordered_products_on_product_id"

  create_table "orders", :force => true do |t|
    t.date     "date"
    t.boolean  "fulfilled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",      :precision => 12, :scale => 2
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
