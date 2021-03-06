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

ActiveRecord::Schema.define(version: 2018_09_02_171224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "image_url"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.decimal "lng"
    t.decimal "lat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location_type"
    t.boolean "lodging_site"
  end

  create_table "maps", force: :cascade do |t|
    t.decimal "lat_floor"
    t.decimal "lat_ceiling"
    t.decimal "lng_floor"
    t.decimal "lng_ceiling"
    t.string "name"
    t.string "image_url"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "height"
    t.integer "width"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "reviewer"
    t.string "text"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_segments", force: :cascade do |t|
    t.integer "nw_end"
    t.integer "se_end"
    t.decimal "distance"
    t.integer "time"
    t.string "description"
    t.string "road"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_steps", force: :cascade do |t|
    t.integer "route_id"
    t.integer "route_segment_id"
    t.integer "order_index"
    t.decimal "step_distance"
    t.decimal "step_time"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_warnings", force: :cascade do |t|
    t.integer "route_segment_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer "start_location_id"
    t.integer "end_location_id"
    t.integer "total_time"
    t.decimal "total_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "synonyms", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
