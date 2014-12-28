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

ActiveRecord::Schema.define(version: 20141228185756) do

  create_table "cards", force: true do |t|
    t.string   "question"
    t.string   "answer"
    t.string   "hint",                     null: false
    t.integer  "num_corr",   default: 0
    t.integer  "num_shown",  default: 0
    t.float    "ratio",      default: 0.0
    t.integer  "deck_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decks", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "deck_image",  default: "/assets/no-image-provided.png"
    t.float    "deck_score"
    t.boolean  "private?",    default: false
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_decks", force: true do |t|
    t.integer  "deck_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.text     "progress_scores"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
