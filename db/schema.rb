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

ActiveRecord::Schema.define(version: 20200205033332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billing_informations", force: :cascade do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "cc_type"
    t.string   "cc_last_four"
    t.integer  "user_id"
    t.integer  "invoice_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "billing_information_id"
    t.integer  "order_id"
    t.string   "country"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["billing_information_id"], name: "index_billing_informations_on_billing_information_id", unique: true, using: :btree
    t.index ["invoice_id"], name: "index_billing_informations_on_invoice_id", using: :btree
    t.index ["order_id"], name: "index_billing_informations_on_order_id", using: :btree
    t.index ["user_id"], name: "index_billing_informations_on_user_id", using: :btree
  end

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.string   "expiration_mm"
    t.string   "expiration_yy"
    t.string   "card_number"
    t.string   "cvc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "card_type"
    t.integer  "order_id"
    t.index ["order_id"], name: "index_cards_on_order_id", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "name"
    t.string   "tracking"
    t.decimal  "total",      precision: 12, scale: 3
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["user_id"], name: "index_invoices_on_user_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "invoice_id"
    t.index ["invoice_id"], name: "index_order_items_on_invoice_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["product_id"], name: "index_order_items_on_product_id", using: :btree
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",        precision: 12, scale: 3
    t.decimal  "tax",             precision: 12, scale: 3
    t.decimal  "shipping",        precision: 12, scale: 3
    t.decimal  "total",           precision: 12, scale: 3
    t.integer  "order_status_id",                          default: 0
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "tracking"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",            precision: 12, scale: 3
    t.boolean  "active"
    t.string   "category"
    t.string   "brand"
    t.string   "filter_primary"
    t.string   "filter_secondary"
    t.text     "details"
    t.text     "main_image"
    t.string   "product_id"
    t.integer  "status",                                    default: 0
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "slug"
    t.integer  "quantity"
    t.string   "upc"
    t.text     "thumb_image"
    t.index ["slug"], name: "index_products_on_slug", unique: true, using: :btree
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.string   "cc_first_name"
    t.string   "cc_last_name"
    t.string   "cc_month"
    t.string   "cc_year"
    t.string   "user_ip"
    t.string   "billing_first_name"
    t.string   "billing_last_name"
    t.string   "billing_address_1"
    t.string   "billing_address_2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_country"
    t.string   "billing_zip"
    t.string   "shipping_last_name"
    t.string   "shipping_address_1"
    t.string   "shipping_address_2"
    t.string   "shipping_country"
    t.string   "shipping_state"
    t.string   "shipping_zip"
    t.decimal  "subtotal",                 precision: 12, scale: 3
    t.decimal  "shipping",                 precision: 12, scale: 3
    t.decimal  "total",                    precision: 12, scale: 3
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "shipping_first_name"
    t.string   "shipping_option"
    t.string   "card_type"
    t.string   "tracking"
    t.integer  "purchase_order_status_id"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "invoice_id"
    t.integer  "shipping_address_id"
    t.integer  "order_id"
    t.string   "country"
    t.string   "shipping_option"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["invoice_id"], name: "index_shipping_addresses_on_invoice_id", using: :btree
    t.index ["order_id"], name: "index_shipping_addresses_on_order_id", using: :btree
    t.index ["shipping_address_id"], name: "index_shipping_addresses_on_shipping_address_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_shipping_addresses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "roles"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "billing_informations", "invoices"
  add_foreign_key "billing_informations", "orders"
  add_foreign_key "billing_informations", "users"
  add_foreign_key "cards", "orders"
  add_foreign_key "invoices", "users"
  add_foreign_key "order_items", "invoices"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "shipping_addresses", "invoices"
  add_foreign_key "shipping_addresses", "orders"
  add_foreign_key "shipping_addresses", "users"
end
