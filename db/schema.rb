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

ActiveRecord::Schema.define(version: 20180203105602) do

  create_table "assetpairs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pairs", force: :cascade do |t|
    t.string   "pair_name"
    t.string   "rate"
    t.string   "altname"
    t.string   "aclass_base"
    t.string   "base"
    t.string   "aclass_quote"
    t.string   "quote"
    t.string   "lot"
    t.string   "pair_decimals"
    t.string   "lot_decimals"
    t.string   "lot_multiplier"
    t.string   "leverage_buy"
    t.string   "leverage_sell"
    t.string   "fees"
    t.string   "fees_maker"
    t.string   "fee_volume_currency"
    t.string   "margin_call"
    t.string   "margin_stop"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
