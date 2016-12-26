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

ActiveRecord::Schema.define(version: 20161225235203) do

  create_table "flowers", force: :cascade do |t|
    t.float    "sepal_length"
    t.float    "sepal_width"
    t.float    "petal_length"
    t.float    "petal_width"
    t.integer  "species_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["species_id"], name: "index_flowers_on_species_id"
  end

  create_table "predictions", force: :cascade do |t|
    t.string   "result_species"
    t.integer  "flower_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["flower_id"], name: "index_predictions_on_flower_id"
  end

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
