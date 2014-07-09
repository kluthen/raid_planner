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

ActiveRecord::Schema.define(version: 20140709165041) do

  create_table "announcements", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_specialisations", force: true do |t|
    t.integer  "character_id"
    t.integer  "role_type_id"
    t.integer  "ordered"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.integer  "user_id"
    t.integer  "ordered"
    t.string   "classe"
    t.string   "name"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_templates", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "players_required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "meet_time"
    t.integer  "players_required"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tier"
  end

  create_table "leaders", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participatings", force: true do |t|
    t.integer  "role_id"
    t.integer  "character_id"
    t.integer  "pickup_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available",    default: true
  end

  create_table "pickups", force: true do |t|
    t.integer  "role_type_id"
    t.string   "classe"
    t.string   "name"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "role_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.integer  "event_template_id"
    t.integer  "event_id"
    t.integer  "required_players"
    t.string   "comment"
    t.integer  "role_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
