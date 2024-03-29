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

ActiveRecord::Schema.define(version: 20140703000721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: true do |t|
    t.string   "name"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actors_movies", id: false, force: true do |t|
    t.integer  "actor_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "poster_url"
    t.text     "plot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trailers", force: true do |t|
    t.string   "title"
    t.string   "embed_url"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
