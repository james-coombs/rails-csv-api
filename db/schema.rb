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

ActiveRecord::Schema.define(version: 20161208204015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "samples", force: :cascade do |t|
    t.string   "row"
    t.string   "sample_id"
    t.string   "sample_type"
    t.string   "matrix"
    t.string   "value"
    t.string   "units"
    t.string   "test_method"
    t.string   "test_manufacturer"
    t.string   "lab_location"
    t.string   "collection_type"
    t.string   "age"
    t.string   "gender"
    t.string   "volume"
    t.string   "collection_date"
    t.string   "test_date"
    t.string   "frozen_date"
    t.string   "box"
    t.string   "aliquots"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

end
