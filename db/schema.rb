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

ActiveRecord::Schema.define(version: 20131219154611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.datetime "date"
    t.string   "tour"
    t.text     "url"
    t.string   "venue"
    t.string   "city"
    t.string   "state"
    t.string   "statecode"
    t.float    "lat"
    t.float    "long"
  end

  create_table "song_performances", force: true do |t|
    t.integer "event_id"
    t.text    "title"
    t.text    "songwriter", default: "Grateful Dead"
    t.integer "set",        default: 1
    t.text    "encore"
  end

  add_index "song_performances", ["event_id"], name: "index_song_performances_on_event_id", using: :btree

  create_table "users", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
