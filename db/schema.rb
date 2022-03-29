# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_327_014_521) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'clients', primary_key: 'client_id', id: :string, force: :cascade do |t|
    t.string 'email'
    t.string 'first_name'
    t.string 'last_name'
    t.string 'job'
    t.string 'country'
    t.string 'address'
    t.string 'zip_code'
    t.decimal 'phone'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'discounts', primary_key: 'discount_id', id: :string, force: :cascade do |t|
    t.string 'summary_id', null: false
    t.decimal 'amount'
    t.string 'discount_type'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['summary_id'], name: 'index_discounts_on_summary_id'
  end

  create_table 'summaries', primary_key: 'summary_id', id: :string, force: :cascade do |t|
    t.string 'client_id', null: false
    t.string 'currency'
    t.decimal 'amount'
    t.decimal 'discount'
    t.decimal 'total_amount'
    t.date 'date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['client_id'], name: 'index_summaries_on_client_id'
  end

  create_table 'transactions', primary_key: 'transaction_id', id: :string, force: :cascade do |t|
    t.string 'summary_id', null: false
    t.decimal 'amount'
    t.string 'approved'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['summary_id'], name: 'index_transactions_on_summary_id'
  end

  add_foreign_key 'discounts', 'summaries', primary_key: 'summary_id'
  add_foreign_key 'summaries', 'clients', primary_key: 'client_id'
  add_foreign_key 'transactions', 'summaries', primary_key: 'summary_id'
end
