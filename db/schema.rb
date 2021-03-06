# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_920_222_634) do
  create_table 'owners', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'contact_number'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'owners_pets', id: false, force: :cascade do |t|
    t.integer 'owner_id', null: false
    t.integer 'pet_id', null: false
    t.index ['owner_id'], name: 'index_owners_pets_on_owner_id'
    t.index ['pet_id'], name: 'index_owners_pets_on_pet_id'
  end

  create_table 'pets', force: :cascade do |t|
    t.string 'name'
    t.string 'gender'
    t.string 'species'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
