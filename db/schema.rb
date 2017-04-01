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

ActiveRecord::Schema.define(version: 20170331193550) do

  create_table "academics", force: :cascade do |t|
    t.string "course"
    t.string "course_alt"
    t.string "certificate"
    t.string "qualification"
    t.string "grade"
    t.string "school"
    t.date "admission_date"
    t.date "graduation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "staff_id"
  end

  add_index "academics", ["staff_id"], name: "index_academics_on_staff_id"

  create_table "charts", force: :cascade do |t|
    t.integer "query_code"
    t.string "text"
    t.string "icon"
    t.string "chart_type"
    t.boolean "passed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "vtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proffessionals", force: :cascade do |t|
    t.string "course"
    t.string "course_alt"
    t.string "certificate"
    t.string "qualification"
    t.string "grade"
    t.string "school"
    t.date "admission_date"
    t.date "graduation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "staff_id"
  end

  add_index "proffessionals", ["staff_id"], name: "index_proffessionals_on_staff_id"

  create_table "queries", force: :cascade do |t|
    t.string   "name"
    t.string "query_code"
    t.string "table_list"
    t.string "query_string"
    t.string   "fields"
    t.string   "where_clause"
    t.boolean "count"
    t.boolean "has_chart", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_courses", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "set_grades", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "display"
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

  create_table "set_schools", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "display"
    t.string "contact_phone"
    t.string "contact_email"
    t.string "contact_box"
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

  create_table "set_specializations", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "display"
    t.string "category"
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
    t.string "technical_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "staff_id"
  end

  add_index "skills", ["staff_id"], name: "index_skills_on_staff_id"

  create_table "specializations", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "display"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "staff_id"
  end

  add_index "specializations", ["staff_id"], name: "index_specializations_on_staff_id"

  create_table "staffs", force: :cascade do |t|
    t.integer  "file_no"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "rank"
    t.string   "gender"
    t.string   "qualification"
    t.string "area_of_specialization"
    t.string   "station"
    t.string   "department"
    t.string   "section"
    t.integer  "grade"
    t.integer  "step"
    t.boolean  "submitted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  add_index "staffs", ["user_id"], name: "index_staffs_on_user_id"

  create_table "tables", force: :cascade do |t|
    t.string "name"
    t.string "vtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickers", force: :cascade do |t|
    t.string "legend"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chart_id"
  end

  add_index "tickers", ["chart_id"], name: "index_tickers_on_chart_id"

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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
