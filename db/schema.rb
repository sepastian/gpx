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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111106052632) do

  create_table "points", :force => true do |t|
    t.datetime "time"
    t.decimal  "latitude",        :precision => 20, :scale => 10
    t.decimal  "longitude",       :precision => 20, :scale => 10
    t.decimal  "elevation",       :precision => 20, :scale => 10
    t.decimal  "distance",        :precision => 20, :scale => 10
    t.decimal  "duration",        :precision => 20, :scale => 10
    t.decimal  "active_duration", :precision => 20, :scale => 10
    t.decimal  "pace",            :precision => 20, :scale => 10
    t.decimal  "speed",           :precision => 20, :scale => 10
    t.integer  "heart_rate"
    t.integer  "cadence"
    t.integer  "ride_id"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "reports", :force => true do |t|
    t.integer  "year"
    t.integer  "month"
    t.integer  "week"
    t.integer  "year_ride_count"
    t.decimal  "year_distance",        :precision => 20, :scale => 10
    t.decimal  "year_duration",        :precision => 20, :scale => 10
    t.decimal  "year_elevation_gain",  :precision => 20, :scale => 10
    t.decimal  "month_distance",       :precision => 20, :scale => 10
    t.decimal  "month_duration",       :precision => 20, :scale => 10
    t.integer  "month_ride_count"
    t.decimal  "month_elevation_gain", :precision => 20, :scale => 10
    t.decimal  "week_distance",        :precision => 20, :scale => 10
    t.decimal  "week_duration",        :precision => 20, :scale => 10
    t.integer  "week_ride_count"
    t.decimal  "week_elevation_gain",  :precision => 20, :scale => 10
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "rides", :force => true do |t|
    t.datetime "start_time"
    t.decimal  "distance",                 :precision => 20, :scale => 10
    t.decimal  "ascending_distance",       :precision => 20, :scale => 10
    t.decimal  "descending_distance",      :precision => 20, :scale => 10
    t.decimal  "flat_distance",            :precision => 20, :scale => 10
    t.decimal  "elevation_gain",           :precision => 20, :scale => 10
    t.decimal  "elevation_loss",           :precision => 20, :scale => 10
    t.decimal  "elevation_change",         :precision => 20, :scale => 10
    t.decimal  "maximum_elevation",        :precision => 20, :scale => 10
    t.decimal  "minimum_elevation",        :precision => 20, :scale => 10
    t.decimal  "duration",                 :precision => 20, :scale => 10
    t.decimal  "active_duration",          :precision => 20, :scale => 10
    t.decimal  "ascending_duration",       :precision => 20, :scale => 10
    t.decimal  "descending_duration",      :precision => 20, :scale => 10
    t.decimal  "flat_duration",            :precision => 20, :scale => 10
    t.decimal  "average_pace",             :precision => 20, :scale => 10
    t.decimal  "average_ascending_pace",   :precision => 20, :scale => 10
    t.decimal  "average_descending_pace",  :precision => 20, :scale => 10
    t.decimal  "average_flat_pace",        :precision => 20, :scale => 10
    t.decimal  "average_speed",            :precision => 20, :scale => 10
    t.decimal  "average_ascending_speed",  :precision => 20, :scale => 10
    t.decimal  "average_descending_speed", :precision => 20, :scale => 10
    t.decimal  "average_flat_speed",       :precision => 20, :scale => 10
    t.decimal  "maximum_speed",            :precision => 20, :scale => 10
    t.integer  "maximum_heart_rate"
    t.decimal  "average_heart_rate",       :precision => 20, :scale => 10
    t.decimal  "average_cadence",          :precision => 20, :scale => 10
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
  end

end
