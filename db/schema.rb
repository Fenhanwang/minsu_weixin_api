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

ActiveRecord::Schema.define(version: 2018_09_28_013806) do

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "phone_num"
    t.string "amenity"
    t.string "personal_id_num"
    t.datetime "check_in"
    t.datetime "check_out"
    t.integer "num_night"
    t.integer "num_pet"
    t.integer "num_guest"
    t.integer "num_kid"
    t.string "order_number"
    t.integer "room_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_orders_on_room_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_name"
    t.integer "unit"
    t.integer "max_guest"
    t.integer "max_kid"
    t.integer "room_size"
    t.string "bed_type"
    t.integer "bed_quantity"
    t.string "amenity"
    t.text "description"
    t.string "country"
    t.string "postal_code"
    t.string "house_num"
    t.string "street"
    t.string "city"
    t.string "state_province"
    t.string "apt_number"
    t.string "charge_type"
    t.float "weekday_price"
    t.float "weekend_price"
    t.float "weekly_price"
    t.float "monthly_price"
    t.integer "for_each_guest_above"
    t.float "charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "gender"
    t.string "phone_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
