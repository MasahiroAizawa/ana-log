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

ActiveRecord::Schema.define(version: 20140604114011) do

  create_table "games", force: true do |t|
    t.string "name"
    t.string "description"
    t.string "kana"
    t.string "image"
  end

  create_table "plays", force: true do |t|
    t.integer "game_id"
    t.date    "date"
    t.integer "user_id"
  end

  create_table "reviews", force: true do |t|
    t.integer "play_id"
    t.string  "body"
    t.string  "image"
  end

  create_table "users", force: true do |t|
    t.string "user_id"
    t.string "key_phrase"
  end

  add_index "users", ["user_id"], name: "index_users_on_user_id", unique: true

end
