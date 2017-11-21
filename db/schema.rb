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

ActiveRecord::Schema.define(version: 20171121184828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recalls", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "reason_for_recall"
    t.string "address_1"
    t.string "address_2"
    t.string "code_info"
    t.string "product_quantity"
    t.date "center_classification_date"
    t.string "distribution_pattern"
    t.string "state"
    t.string "product_description"
    t.date "report_date"
    t.string "classification"
    t.string "recall_number"
    t.string "recalling_firm"
    t.string "initial_firm_notification"
    t.integer "event_id"
    t.string "product_type"
    t.date "termination_date"
    t.date "recall_initiation_date"
    t.string "postal_code"
    t.string "voluntary_mandated"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
