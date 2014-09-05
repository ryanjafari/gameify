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

ActiveRecord::Schema.define(version: 20140902004213) do

  create_table "albums", force: true do |t|
    t.string   "catalog_number"
    t.string   "title"
    t.string   "artwork"
    t.datetime "release_date"
    t.string   "publish_format"
    t.string   "media_format"
    t.string   "classification"
    t.string   "published_by"
    t.string   "composed_by"
    t.string   "arranged_by"
    t.string   "performed_by"
    t.string   "lyrics_by"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
