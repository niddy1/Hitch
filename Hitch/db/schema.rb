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

ActiveRecord::Schema.define(version: 20151106184729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "girls", force: :cascade do |t|
    t.integer  "guy_id"
    t.string   "profile_picture"
    t.string   "description_1"
    t.string   "description_2"
    t.string   "description_3"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "phone_number"
  end

  create_table "guys", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "phone_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "hitchers", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "phone_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "girl_id"
    t.integer  "hitcher_id"
    t.string   "response_description"
    t.integer  "hitcher_rating"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
