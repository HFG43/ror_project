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

ActiveRecord::Schema[7.1].define(version: 2024_10_16_011540) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coordinators", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.bigint "club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_coordinators_on_club_id"
    t.index ["team_id"], name: "index_coordinators_on_team_id"
    t.index ["user_id"], name: "index_coordinators_on_user_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "gender"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_parents_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "position"
    t.string "school"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "club_id", null: false
    t.bigint "team_id", null: false
    t.index ["club_id"], name: "index_players_on_club_id"
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "division"
    t.bigint "club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_teams_on_club_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.boolean "isFather"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "team_id", null: false
    t.index ["team_id"], name: "index_trainers_on_team_id"
    t.index ["user_id"], name: "index_trainers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "role"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "coordinators", "clubs"
  add_foreign_key "coordinators", "teams"
  add_foreign_key "coordinators", "users"
  add_foreign_key "parents", "users"
  add_foreign_key "players", "clubs"
  add_foreign_key "players", "teams"
  add_foreign_key "players", "users"
  add_foreign_key "teams", "clubs"
  add_foreign_key "trainers", "teams"
  add_foreign_key "trainers", "users"
end
