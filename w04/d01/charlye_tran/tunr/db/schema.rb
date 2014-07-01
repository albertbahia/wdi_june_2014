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

ActiveRecord::Schema.define(version: 20140630195338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.integer "songs_id"
    t.string  "name"
    t.string  "nationality"
    t.text    "photo_url"
  end

  create_table "playlists", force: true do |t|
    t.integer "songs_id"
    t.string  "name"
  end

  create_table "playlists_songs", id: false, force: true do |t|
    t.integer "playlist_id", null: false
    t.integer "song_id",     null: false
  end

  create_table "songs", force: true do |t|
    t.integer "playlists_id"
    t.integer "artist_id"
    t.string  "title"
    t.string  "album"
    t.string  "preview_url"
    t.integer "price"
  end

end
