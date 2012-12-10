# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121210010557) do

  create_table "images", :force => true do |t|
    t.integer "listing_id", :default => 0,    :null => false
    t.string  "filename",                     :null => false
    t.integer "user_id",    :default => 0,    :null => false
    t.boolean "published",  :default => true, :null => false
    t.integer "order",      :default => 0,    :null => false
  end

  add_index "images", ["listing_id"], :name => "listing_id"
  add_index "images", ["user_id"], :name => "user_id"

  create_table "listings", :force => true do |t|
    t.string   "street_num",        :limit => 20,                                 :default => "",    :null => false
    t.string   "street",                                                          :default => "",    :null => false
    t.string   "title",             :limit => 100,                                :default => "",    :null => false
    t.text     "short_description",                                                                  :null => false
    t.text     "description",                                                                        :null => false
    t.string   "city",              :limit => 55,                                 :default => "",    :null => false
    t.integer  "state_id",          :limit => 1,                                  :default => 0,     :null => false
    t.string   "postcode",          :limit => 20,                                 :default => "",    :null => false
    t.string   "county",            :limit => 55,                                 :default => "",    :null => false
    t.string   "latitude",                                                        :default => "0",   :null => false
    t.string   "longitude",                                                       :default => "0",   :null => false
    t.string   "address",                                                         :default => "",    :null => false
    t.decimal  "price",                            :precision => 10, :scale => 2, :default => 0.0,   :null => false
    t.float    "acres",                                                           :default => 0.0,   :null => false
    t.integer  "hits",                                                            :default => 0,     :null => false
    t.boolean  "featured",                                                        :default => false, :null => false
    t.datetime "created_at",                                                                         :null => false
    t.datetime "updated_at",                                                                         :null => false
    t.boolean  "published",                                                       :default => false, :null => false
  end

  add_index "listings", ["acres", "id"], :name => "acres"
  add_index "listings", ["featured", "id"], :name => "featured"
  add_index "listings", ["hits", "id"], :name => "hits"
  add_index "listings", ["price", "id"], :name => "price"
  add_index "listings", ["published", "id"], :name => "published"
  add_index "listings", ["state_id", "id"], :name => "state_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "states", :force => true do |t|
    t.string "name",                 :default => "", :null => false
    t.string "mc_name", :limit => 2, :default => "", :null => false
  end

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "avatar"
    t.string   "job_description"
    t.text     "bio"
    t.string   "phone",                                  :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
