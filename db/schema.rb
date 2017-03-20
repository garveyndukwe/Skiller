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

ActiveRecord::Schema.define(version: 20170318233849) do

  create_table "queries", force: :cascade do |t|
    t.string   "name"
    t.string   "query"
    t.string   "fields"
    t.string   "where_clause"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "set_departments", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_genders", force: :cascade do |t|
    t.string   "code"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_qualifications", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_ranks", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_sections", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_specilizations", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_stations", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "oral_score"
    t.string   "written_score"
    t.string   "analytic_score"
    t.string   "computing_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "staff_id"
  end

  add_index "skills", ["staff_id"], name: "index_skills_on_staff_id"

  create_table "staffs", force: :cascade do |t|
    t.integer  "file_no"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "rank"
    t.string   "gender"
    t.string   "area_specialize"
    t.string   "qualification"
    t.string   "station"
    t.string   "department"
    t.string   "section"
    t.integer  "grade"
    t.integer  "step"
    t.boolean  "submitted"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "code"
    t.string   "category"
    t.string   "title"
    t.datetime "date_attended"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "staff_id"
  end

  add_index "trainings", ["staff_id"], name: "index_trainings_on_staff_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
