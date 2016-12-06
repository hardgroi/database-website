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

ActiveRecord::Schema.define(version: 20161206040843) do

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "alt_last_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "book_auths", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_book_auths_on_author_id"
    t.index ["book_id"], name: "index_book_auths_on_book_id"
  end

  create_table "book_categories", force: :cascade do |t|
    t.integer  "isbn_id"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["isbn_id"], name: "index_book_categories_on_isbn_id"
  end

  create_table "book_pubs", force: :cascade do |t|
    t.integer  "isbn_id"
    t.integer  "publisher_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["isbn_id"], name: "index_book_pubs_on_isbn_id"
    t.index ["publisher_id"], name: "index_book_pubs_on_publisher_id"
  end

  create_table "books", id: false, force: :cascade do |t|
    t.integer  "isbn"
    t.float    "price"
    t.string   "title"
    t.string   "year"
    t.integer  "qty_on_order"
    t.integer  "qty_in_stock"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["isbn"], name: "index_books_on_isbn", unique: true
  end

  create_table "cart_infos", force: :cascade do |t|
    t.integer  "shopping_cart_id"
    t.integer  "item_quantity"
    t.string   "coupon_code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["shopping_cart_id"], name: "index_cart_infos_on_shopping_cart_id"
  end

  create_table "customer_cards", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "card_expiration_date"
    t.string   "card_type"
    t.integer  "card_security_code"
    t.integer  "card_number"
    t.string   "cardholder_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_customer_cards_on_user_id"
  end

  create_table "customer_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "isbn_id"
    t.date     "purchase_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["isbn_id"], name: "index_customer_histories_on_isbn_id"
    t.index ["user_id"], name: "index_customer_histories_on_user_id"
  end

  create_table "payment_histories", force: :cascade do |t|
    t.integer  "payment_id"
    t.float    "order_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["payment_id"], name: "index_payment_histories_on_payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "shopping_cart_id"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["shopping_cart_id"], name: "index_payments_on_shopping_cart_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "pub_name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_shopping_carts_on_book_id"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "address"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
