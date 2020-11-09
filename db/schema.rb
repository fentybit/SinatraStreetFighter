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

ActiveRecord::Schema.define(version: 2020_10_31_224114) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "quote"
    t.text "bio"
    t.string "image"
    t.string "video"
    t.integer "user_id"
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.integer "character_id"
  end

  create_table "moves_stages", force: :cascade do |t|
    t.integer "stage_id"
    t.integer "move_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "username"
    t.string "email", default: "email"
    t.string "password_digest", default: "password"
  end

end
