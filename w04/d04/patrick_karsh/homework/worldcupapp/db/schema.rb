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

ActiveRecord::Schema.define(version: 20140707024339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: true do |t|
    t.string "name"
  end

  create_table "groups_teams", id: false, force: true do |t|
    t.integer "team_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "groups_teams", ["group_id", "team_id"], name: "index_groups_teams_on_group_id_and_team_id", using: :btree
  add_index "groups_teams", ["team_id", "group_id"], name: "index_groups_teams_on_team_id_and_group_id", using: :btree

  create_table "players", force: true do |t|
    t.integer "team_id"
    t.string  "name"
    t.text    "photo_url"
    t.string  "position"
    t.integer "skill"
  end

  create_table "players_teams", id: false, force: true do |t|
    t.integer "team_id",   null: false
    t.integer "player_id", null: false
  end

  add_index "players_teams", ["player_id", "team_id"], name: "index_players_teams_on_player_id_and_team_id", using: :btree
  add_index "players_teams", ["team_id", "player_id"], name: "index_players_teams_on_team_id_and_player_id", using: :btree

  create_table "teams", force: true do |t|
    t.integer "group_id"
    t.string  "country"
    t.text    "flag_url"
    t.string  "manager"
  end

end
