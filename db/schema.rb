# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_27_134503) do

  create_table "bookings", force: :cascade do |t|
    t.string "phone"
    t.string "date"
    t.string "capacity"
    t.integer "usr_id", null: false
    t.integer "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_bookings_on_destination_id"
    t.index ["usr_id"], name: "index_bookings_on_usr_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "location"
    t.string "description"
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "status"
    t.string "amount"
    t.string "payment"
    t.integer "usr_id", null: false
    t.integer "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["usr_id"], name: "index_payments_on_usr_id"
  end

  create_table "usrs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "destinations"
  add_foreign_key "bookings", "usrs"
  add_foreign_key "payments", "bookings"
  add_foreign_key "payments", "usrs"
end
