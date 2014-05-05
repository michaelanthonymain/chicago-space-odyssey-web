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

ActiveRecord::Schema.define(version: 20140505140722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: true do |t|
    t.text     "text"
    t.integer  "location_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "beacon_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systems", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "image_path"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "distance"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.integer  "uid"
    t.string   "name"
    t.string   "username"
    t.string   "image_string"
    t.string   "location"
    t.string   "token"
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
