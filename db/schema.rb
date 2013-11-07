# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130829063251) do

  create_table "accordions", :force => true do |t|
    t.string   "heading"
    t.string   "image"
    t.text     "paragraph"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendence_children", :force => true do |t|
    t.integer  "attendence_id"
    t.string   "st_no"
    t.string   "presence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendences", :force => true do |t|
    t.string   "group"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes_managers", :force => true do |t|
    t.integer  "note_id"
    t.integer  "accordion_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sass_pages", :force => true do |t|
    t.string   "sass_text"
    t.string   "sass_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "send_birthdaymails", :force => true do |t|
    t.string   "all"
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "before_days"
    t.string   "template"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
