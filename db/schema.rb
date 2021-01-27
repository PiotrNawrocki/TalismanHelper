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

ActiveRecord::Schema.define(version: 2021_01_27_213452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "character_abilities", force: :cascade do |t|
    t.bigint "characters_id"
    t.bigint "abilities_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["abilities_id"], name: "index_character_abilities_on_abilities_id"
    t.index ["characters_id"], name: "index_character_abilities_on_characters_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "craft"
    t.integer "fate"
    t.integer "gold"
    t.integer "life"
    t.string "starting_with_spell"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "dlcs_id"
    t.index ["dlcs_id"], name: "index_characters_on_dlcs_id"
  end

  create_table "dlcs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "followers", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "craft"
    t.integer "quantity"
    t.boolean "weapon"
    t.boolean "magic"
    t.boolean "only_in_battle"
    t.string "nature"
    t.bigint "dlcs_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dlcs_id"], name: "index_followers_on_dlcs_id"
  end

  create_table "game_dlcs", force: :cascade do |t|
    t.bigint "dlcs_id"
    t.bigint "games_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dlcs_id"], name: "index_game_dlcs_on_dlcs_id"
    t.index ["games_id"], name: "index_game_dlcs_on_games_id"
  end

  create_table "game_followers", force: :cascade do |t|
    t.bigint "followers_id"
    t.string "used_times"
    t.bigint "games_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["followers_id"], name: "index_game_followers_on_followers_id"
    t.index ["games_id"], name: "index_game_followers_on_games_id"
  end

  create_table "game_items", force: :cascade do |t|
    t.bigint "items_id"
    t.string "used_times"
    t.bigint "games_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["games_id"], name: "index_game_items_on_games_id"
    t.index ["items_id"], name: "index_game_items_on_items_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "state", default: "new"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "craft"
    t.integer "quantity"
    t.boolean "weapon"
    t.boolean "magic"
    t.boolean "only_in_battle"
    t.string "nature"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_followers", force: :cascade do |t|
    t.bigint "players_id"
    t.bigint "game_items_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_items_id"], name: "index_player_followers_on_game_items_id"
    t.index ["players_id"], name: "index_player_followers_on_players_id"
  end

  create_table "player_items", force: :cascade do |t|
    t.bigint "players_id"
    t.bigint "game_followers_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_followers_id"], name: "index_player_items_on_game_followers_id"
    t.index ["players_id"], name: "index_player_items_on_players_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "characters_id"
    t.integer "strength"
    t.integer "craft"
    t.integer "fate"
    t.integer "gold"
    t.integer "life"
    t.bigint "games_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["characters_id"], name: "index_players_on_characters_id"
    t.index ["games_id"], name: "index_players_on_games_id"
  end

  create_table "starting_items", force: :cascade do |t|
    t.bigint "characters_id"
    t.bigint "items_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["characters_id"], name: "index_starting_items_on_characters_id"
    t.index ["items_id"], name: "index_starting_items_on_items_id"
  end

end
