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

ActiveRecord::Schema[7.0].define(version: 2022_11_17_193313) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bales", force: :cascade do |t|
    t.float "weight"
    t.bigint "material_id", null: false
    t.bigint "turn_id", null: false
    t.bigint "line_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_bales_on_line_id"
    t.index ["material_id"], name: "index_bales_on_material_id"
    t.index ["turn_id"], name: "index_bales_on_turn_id"
    t.index ["user_id"], name: "index_bales_on_user_id"
  end

  create_table "lines", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "tipo"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mixtures", force: :cascade do |t|
    t.float "weight"
    t.bigint "material_id", null: false
    t.bigint "turn_id", null: false
    t.bigint "line_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_mixtures_on_line_id"
    t.index ["material_id"], name: "index_mixtures_on_material_id"
    t.index ["turn_id"], name: "index_mixtures_on_turn_id"
    t.index ["user_id"], name: "index_mixtures_on_user_id"
  end

  create_table "punched_rolls", force: :cascade do |t|
    t.float "width"
    t.float "length"
    t.float "weight"
    t.bigint "line_id", null: false
    t.bigint "turn_id", null: false
    t.bigint "user_id", null: false
    t.bigint "reference_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_punched_rolls_on_line_id"
    t.index ["reference_id"], name: "index_punched_rolls_on_reference_id"
    t.index ["turn_id"], name: "index_punched_rolls_on_turn_id"
    t.index ["user_id"], name: "index_punched_rolls_on_user_id"
  end

  create_table "references", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "color"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rolls", force: :cascade do |t|
    t.float "weight"
    t.float "length"
    t.bigint "reference_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reference_id"], name: "index_rolls_on_reference_id"
    t.index ["user_id"], name: "index_rolls_on_user_id"
  end

  create_table "turns", force: :cascade do |t|
    t.string "number"
    t.string "entrada"
    t.string "salida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "last_name", null: false
    t.boolean "admin", default: false
    t.string "cedula", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bales", "lines"
  add_foreign_key "bales", "materials"
  add_foreign_key "bales", "turns"
  add_foreign_key "bales", "users"
  add_foreign_key "mixtures", "lines"
  add_foreign_key "mixtures", "materials"
  add_foreign_key "mixtures", "turns"
  add_foreign_key "mixtures", "users"
  add_foreign_key "punched_rolls", "\"references\"", column: "reference_id"
  add_foreign_key "punched_rolls", "lines"
  add_foreign_key "punched_rolls", "turns"
  add_foreign_key "punched_rolls", "users"
  add_foreign_key "rolls", "\"references\"", column: "reference_id"
  add_foreign_key "rolls", "users"
end
