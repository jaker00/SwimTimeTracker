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

ActiveRecord::Schema.define(version: 20140805192309) do

  create_table "attendances", force: true do |t|
    t.string   "meet_id"
    t.string   "swimmer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meet_events", force: true do |t|
    t.string   "length"
    t.string   "stroke"
    t.string   "meet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lengthtype"
  end

  create_table "meets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "swim_times", force: true do |t|
    t.string   "time"
    t.string   "meet_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attendance_id"
  end

  create_table "swimmers", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
  end

end
