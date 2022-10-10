# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_28_203630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "pack_name"
    t.string "type_code"
    t.string "type_name"
    t.string "subtype_code"
    t.string "faction_name"
    t.integer "code"
    t.string "name"
    t.string "subname"
    t.string "text"
    t.integer "quantity"
    t.integer "deck_limit"
    t.string "traits"
    t.string "flavor"
    t.boolean "permanent"
    t.boolean "double_sided"
    t.string "back_text"
    t.string "back_flavor"
    t.string "imagesrc"
    t.string "backimagesrc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "investigator_weaknesses", force: :cascade do |t|
    t.bigint "investigator_id", null: false
    t.bigint "weakness_id", null: false
    t.string "quote"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investigator_id"], name: "index_investigator_weaknesses_on_investigator_id"
    t.index ["weakness_id"], name: "index_investigator_weaknesses_on_weakness_id"
  end

  create_table "investigators", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "weakness"
    t.string "deck_link"
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_investigators_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "campaign"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_teams", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_user_teams_on_team_id"
    t.index ["user_id"], name: "index_user_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weaknesses", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "investigator_weaknesses", "investigators"
  add_foreign_key "investigator_weaknesses", "weaknesses"
  add_foreign_key "investigators", "teams"
  add_foreign_key "user_teams", "teams"
  add_foreign_key "user_teams", "users"
end
