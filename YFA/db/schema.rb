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

ActiveRecord::Schema.define(version: 20140723151459) do

  create_table "auditions", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.datetime "when"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  create_table "interests", force: true do |t|
    t.string   "acting"
    t.string   "directing"
    t.string   "editing"
    t.string   "costumes"
    t.string   "cinematography"
    t.string   "camerawork"
    t.string   "sound"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.string   "genre"
    t.text     "description"
    t.datetime "dates"
    t.integer  "producer"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "cast"
  end

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "year"
    t.string   "college"
    t.text     "bio"
    t.string   "image"
    t.string   "name"
    t.string   "netid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
