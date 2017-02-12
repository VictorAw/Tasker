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

ActiveRecord::Schema.define(version: 20170212021711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "configurations", force: :cascade do |t|
    t.time     "workday_start", null: false
    t.time     "workday_end",   null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "group_assignments", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "group_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "flock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_assignments", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "task_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_task_assignments_on_task_id", using: :btree
    t.index ["user_id"], name: "index_task_assignments_on_user_id", using: :btree
  end

  create_table "task_steps", force: :cascade do |t|
    t.integer  "task_id",                     null: false
    t.string   "title",                       null: false
    t.text     "description"
    t.boolean  "finished",    default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["task_id"], name: "index_task_steps_on_task_id", using: :btree
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "task_duration",                 null: false
    t.datetime "deadline",                      null: false
    t.boolean  "finished",      default: false, null: false
    t.integer  "manager_id",                    null: false
    t.string   "title",                         null: false
    t.text     "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             null: false
    t.string   "last_name",              null: false
    t.string   "flock_token"
    t.string   "oauth_provider"
    t.string   "oauth_uid"
    t.string   "oauth_name"
    t.string   "oauth_token"
    t.datetime "oauth_token_expires_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
