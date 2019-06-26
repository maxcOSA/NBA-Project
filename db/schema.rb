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

ActiveRecord::Schema.define(version: 2019_06_07_180139) do

  create_table "awards", force: :cascade do |t|
    t.string "year"
    t.string "MVP"
    t.string "DPOY"
    t.string "MIP"
    t.string "CPOY"
    t.string "COY"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ROY"
    t.string "SMOY"
  end

  create_table "finals", force: :cascade do |t|
    t.string "year"
    t.string "Winner"
    t.string "Loser"
    t.string "MVP"
    t.integer "Games"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_histories", force: :cascade do |t|
    t.string "year"
    t.string "team"
    t.decimal "ppg"
    t.decimal "rpg"
    t.decimal "apg"
    t.decimal "bpg"
    t.decimal "spg"
    t.decimal "fgp"
    t.decimal "tpp"
    t.decimal "ftp"
    t.integer "gp"
    t.decimal "mpg"
    t.string "award"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "conference"
    t.string "division"
    t.string "reg_rec"
    t.string "finish"
    t.integer "division_standing"
    t.integer "conference_standing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season_id"
    t.integer "championships"
    t.integer "finals_appearances"
    t.integer "league_standing"
    t.index ["season_id"], name: "index_teams_on_season_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
