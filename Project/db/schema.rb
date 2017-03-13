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

ActiveRecord::Schema.define(version: 20170218140658) do

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.string   "publisher"
    t.integer  "category_id"
    t.integer  "subject_id"
    t.float    "price"
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cover"
  end

  add_index "books", ["category_id"], name: "index_books_on_category_id"
  add_index "books", ["subject_id"], name: "index_books_on_subject_id"
  add_index "books", ["user_id"], name: "index_books_on_user_id"

  create_table "carts", force: :cascade do |t|
    t.integer  "note_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "carts", ["book_id"], name: "index_carts_on_book_id"
  add_index "carts", ["note_id"], name: "index_carts_on_note_id"

  create_table "categories", force: :cascade do |t|
    t.string   "branch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["book_id"], name: "index_comments_on_book_id"

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "category_id"
    t.integer  "subject_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "file"
  end

  add_index "notes", ["category_id"], name: "index_notes_on_category_id"
  add_index "notes", ["subject_id"], name: "index_notes_on_subject_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "subjects", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "subject_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "subjects", ["category_id"], name: "index_subjects_on_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
