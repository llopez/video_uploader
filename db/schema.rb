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

ActiveRecord::Schema.define(version: 20140606141238) do

  create_table "assets", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "panda_id"
    t.string   "original_filename"
    t.string   "source_url"
    t.string   "extname"
    t.integer  "duration"
    t.string   "audio_codec"
    t.string   "video_codec"
    t.integer  "file_size"
    t.integer  "width"
    t.integer  "height"
    t.integer  "fps"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mime_type"
    t.integer  "video_bitrate"
    t.integer  "audio_bitrate"
    t.integer  "audio_channels"
    t.integer  "audio_sample_rate"
    t.string   "path"
    t.string   "cloud_id"
  end

end
