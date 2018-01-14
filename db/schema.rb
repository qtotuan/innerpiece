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

ActiveRecord::Schema.define(version: 20180114113805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "games", force: :cascade do |t|
    t.boolean "completed"
    t.bigint "user_id"
    t.bigint "puzzle_id"
    t.bigint "size_id"
    t.index ["puzzle_id"], name: "index_games_on_puzzle_id"
    t.index ["size_id"], name: "index_games_on_size_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "piece_id"
    t.integer "coordinates", default: [], array: true
    t.index ["game_id"], name: "index_locations_on_game_id"
    t.index ["piece_id"], name: "index_locations_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.bigint "puzzle_id"
    t.bigint "size_id"
    t.index ["puzzle_id"], name: "index_pieces_on_puzzle_id"
    t.index ["size_id"], name: "index_pieces_on_size_id"
  end

  create_table "puzzles", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_puzzles_on_category_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "row"
    t.integer "column"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
  end

end
