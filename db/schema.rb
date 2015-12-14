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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151214090915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartment_users", force: :cascade do |t|
    t.integer  "apartment_id"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "apartment_users", ["apartment_id"], name: "index_apartment_users_on_apartment_id", using: :btree
  add_index "apartment_users", ["user_id"], name: "index_apartment_users_on_user_id", using: :btree

  create_table "apartments", force: :cascade do |t|
    t.integer  "apartment_floor"
    t.string   "apartment_ref"
    t.integer  "user_id"
    t.integer  "building_id"
    t.integer  "owner_id"
    t.integer  "resident_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "apartments", ["building_id"], name: "index_apartments_on_building_id", using: :btree
  add_index "apartments", ["user_id"], name: "index_apartments_on_user_id", using: :btree

  create_table "appointments", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.time     "time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.integer  "guardian_id"
    t.integer  "syndic_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "number_floor"
    t.string   "building_password"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.datetime "date"
    t.string   "post_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "id_building"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.boolean  "show_phone"
    t.boolean  "is_owner"
    t.boolean  "is_pm"
    t.boolean  "is_syndic"
    t.boolean  "is_renter"
    t.integer  "phone_number"
    t.integer  "apartment_id"
    t.integer  "id_building_to_show"
    t.datetime "startnothere"
    t.datetime "endnothere"
  end

  add_index "users", ["apartment_id"], name: "index_users_on_apartment_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "apartment_users", "apartments"
  add_foreign_key "apartment_users", "users"
  add_foreign_key "apartments", "buildings"
  add_foreign_key "apartments", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "users", "apartments"
end
