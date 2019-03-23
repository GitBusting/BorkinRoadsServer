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

ActiveRecord::Schema.define(version: 2019_03_23_083423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "sex"
    t.string "birthDate"
    t.string "lastWalkDate"
    t.string "lastBathDate"
    t.string "lastVetDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "public_route_records", force: :cascade do |t|
    t.integer "userID"
    t.integer "petID"
    t.string "route"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isActive"
    t.datetime "date"
  end

  create_table "route2s", force: :cascade do |t|
    t.string "title"
    t.string "route"
    t.float "rating"
    t.datetime "date"
    t.float "estimatedDuration"
    t.boolean "nearWater"
    t.boolean "nearPark"
    t.boolean "favourite"
    t.integer "numberOfTimesUsed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_details", force: :cascade do |t|
    t.float "maxPace"
    t.float "avgPace"
    t.float "movingPace"
    t.float "maxSpeed"
    t.float "avgSpeed"
    t.float "movingSpeed"
    t.float "routeLength"
    t.float "totalTime"
    t.float "movingTime"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "route_id"
    t.index ["route_id"], name: "index_route_details_on_route_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "title"
    t.string "path"
    t.float "rating"
    t.datetime "date"
    t.float "estimatedDuration"
    t.boolean "nearWater"
    t.boolean "nearPark"
    t.boolean "favourite"
    t.integer "numberOfTimesUsed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_routes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "friend_ids"
  end

end
