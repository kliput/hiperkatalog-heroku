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

ActiveRecord::Schema.define(:version => 20121216083753) do

  create_table "feeds", :force => true do |t|
    t.string  "name",       :null => false
    t.integer "host_id"
    t.integer "monitor_id", :null => false
    t.string  "uri",        :null => false
  end

  add_index "feeds", ["monitor_id", "name"], :name => "index_feeds_on_monitor_id_and_name", :unique => true
  add_index "feeds", ["name"], :name => "index_feeds_on_name"

  create_table "hosts", :force => true do |t|
    t.string  "name",       :null => false
    t.integer "monitor_id", :null => false
  end

  add_index "hosts", ["monitor_id", "name"], :name => "index_hosts_on_monitor_id_and_name", :unique => true
  add_index "hosts", ["monitor_id"], :name => "index_hosts_on_monitor_id"

  create_table "monitors", :force => true do |t|
    t.string "name", :null => false
  end

  add_index "monitors", ["name"], :name => "index_monitors_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string "login",   :null => false
    t.string "email",   :null => false
    t.string "name"
    t.string "surname"
    t.string "key"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "users_feeds", :force => true do |t|
    t.integer "user_id", :null => false
    t.integer "feed_id", :null => false
  end

  add_index "users_feeds", ["user_id", "feed_id"], :name => "index_users_feeds_on_user_id_and_feed_id", :unique => true

end
