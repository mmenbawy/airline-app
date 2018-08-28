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

ActiveRecord::Schema.define(version: 2018_08_27_131032) do

  create_table "aircrafts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "symbol"
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "flight_no"
    t.time "departure_time"
    t.date "departure_date"
    t.time "arrival_time"
    t.date "arrival_date"
    t.float "price"
    t.integer "occupied_seats"
    t.integer "departure_airport_id"
    t.integer "arrival_airport_id"
    t.integer "aircraft_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights_users", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.bigint "user_id", null: false
    t.index ["flight_id"], name: "index_flights_users_on_flight_id"
    t.index ["user_id"], name: "index_flights_users_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.integer "phone_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
