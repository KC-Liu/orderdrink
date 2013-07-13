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

ActiveRecord::Schema.define(:version => 20130713075308) do

  create_table "activities", :force => true do |t|
    t.string   "subject"
    t.date     "shift_date"
    t.string   "album"
    t.boolean  "is_over",    :default => false
    t.integer  "album_seq"
    t.string   "hyperlink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string  "name"
    t.string  "sugar"
    t.string  "ice"
    t.string  "sign"
    t.integer "activity_id"
    t.integer "price",       :default => 20
    t.string  "size"
    t.boolean "payup",       :default => false
  end

  add_index "items", ["activity_id"], :name => "index_items_on_activity_id"

end
