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

ActiveRecord::Schema.define(version: 20160816043655) do

  create_table "agencies", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "pass_active"
    t.boolean  "acc_active"
    t.datetime "last_in"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contractees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "pass_active"
    t.boolean  "acc_active"
    t.datetime "last_in"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.boolean  "pass_active"
    t.boolean  "acc_active"
    t.datetime "last_in"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.integer  "agency_id"
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.boolean  "pass_active"
    t.boolean  "acc_active"
    t.datetime "last_in"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.integer  "contractee_id"
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.boolean  "pass_active"
    t.boolean  "acc_active"
    t.datetime "last_in"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tcards", force: :cascade do |t|
    t.integer  "contractor_id"
    t.integer  "contractee_id"
    t.integer  "recruiter_id"
    t.datetime "time_in"
    t.datetime "time_out"
    t.integer  "supervisor_id"
    t.string   "supervisor_status"
    t.integer  "manager_id"
    t.string   "manager_status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
