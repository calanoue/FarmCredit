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

ActiveRecord::Schema.define(:version => 20120316205337) do

  create_table "breakeven_costs", :force => true do |t|
    t.integer  "farm_id"
    t.integer  "crop_id"
    t.integer  "crop_year"
    t.float    "cash_price",        :default => 0.0
    t.float    "gov_pay",           :default => 0.0
    t.float    "fertilizer",        :default => 0.0
    t.float    "pesticide",         :default => 0.0
    t.float    "seed",              :default => 0.0
    t.float    "drying",            :default => 0.0
    t.float    "storage",           :default => 0.0
    t.float    "crop_insurance",    :default => 0.0
    t.float    "mach_hire_lease",   :default => 0.0
    t.float    "utils",             :default => 0.0
    t.float    "mach_repair",       :default => 0.0
    t.float    "fuel_oil",          :default => 0.0
    t.float    "light_vech",        :default => 0.0
    t.float    "mach_depreciation", :default => 0.0
    t.float    "hired_labor",       :default => 0.0
    t.float    "bldg_rep_rent",     :default => 0.0
    t.float    "bldg_depreciation", :default => 0.0
    t.float    "insurance",         :default => 0.0
    t.float    "misc",              :default => 0.0
    t.float    "interest",          :default => 0.0
    t.float    "family_living",     :default => 0.0
    t.float    "land_cost_rent",    :default => 0.0
    t.float    "exp_custom",        :default => 0.0
    t.float    "dir_exp_custom",    :default => 0.0
    t.float    "pow_exp_custom",    :default => 0.0
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "breakeven_costs", ["farm_id"], :name => "index_breakeven_costs_on_farm_id"

  create_table "client_premia", :force => true do |t|
    t.integer  "client_id"
    t.integer  "county_id"
    t.integer  "crop_id"
    t.integer  "crop_year"
    t.integer  "coverage_level"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "client_premia", ["crop_id", "client_id", "county_id"], :name => "index_client_premia_on_crop_id_and_client_id_and_county_id"

  create_table "clients", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clients", ["user_id"], :name => "index_clients_on_user_id"

  create_table "counties", :force => true do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "counties", ["state_id"], :name => "index_counties_on_state_id"

  create_table "coverages", :force => true do |t|
    t.float    "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crops", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "farm_fields", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "farm_insurances", :force => true do |t|
    t.integer  "farm_id"
    t.integer  "crop_year"
    t.float    "corn_aph"
    t.float    "corn_acre"
    t.float    "corn_interest"
    t.float    "soybean_aph"
    t.float    "soybean_acre"
    t.float    "soybean_interest"
    t.boolean  "added_land",       :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "farm_insurances", ["farm_id"], :name => "index_farm_insurances_on_farm_id"

  create_table "farm_managements", :force => true do |t|
    t.integer  "farm_id"
    t.integer  "crop_id"
    t.string   "field_name"
    t.float    "yr_1972"
    t.float    "yr_1973"
    t.float    "yr_1974"
    t.float    "yr_1975"
    t.float    "yr_1976"
    t.float    "yr_1977"
    t.float    "yr_1978"
    t.float    "yr_1979"
    t.float    "yr_1980"
    t.float    "yr_1981"
    t.float    "yr_1982"
    t.float    "yr_1983"
    t.float    "yr_1984"
    t.float    "yr_1985"
    t.float    "yr_1986"
    t.float    "yr_1987"
    t.float    "yr_1988"
    t.float    "yr_1989"
    t.float    "yr_1990"
    t.float    "yr_1991"
    t.float    "yr_1992"
    t.float    "yr_1993"
    t.float    "yr_1994"
    t.float    "yr_1995"
    t.float    "yr_1996"
    t.float    "yr_1997"
    t.float    "yr_1998"
    t.float    "yr_1999"
    t.float    "yr_2000"
    t.float    "yr_2001"
    t.float    "yr_2002"
    t.float    "yr_2003"
    t.float    "yr_2004"
    t.float    "yr_2005"
    t.float    "yr_2006"
    t.float    "yr_2007"
    t.float    "yr_2008"
    t.float    "yr_2009"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "farm_managements", ["crop_id", "farm_id"], :name => "index_farm_managements_on_crop_id_and_farm_id"

  create_table "farms", :force => true do |t|
    t.integer  "client_id"
    t.integer  "county_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "farms", ["client_id", "county_id"], :name => "index_farms_on_client_id_and_county_id"

  create_table "interests", :force => true do |t|
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nass_yields", :force => true do |t|
    t.integer  "county_id"
    t.integer  "crop_id"
    t.float    "yield_1972"
    t.float    "yield_1973"
    t.float    "yield_1974"
    t.float    "yield_1975"
    t.float    "yield_1976"
    t.float    "yield_1977"
    t.float    "yield_1978"
    t.float    "yield_1979"
    t.float    "yield_1980"
    t.float    "yield_1981"
    t.float    "yield_1982"
    t.float    "yield_1983"
    t.float    "yield_1984"
    t.float    "yield_1985"
    t.float    "yield_1986"
    t.float    "yield_1987"
    t.float    "yield_1988"
    t.float    "yield_1989"
    t.float    "yield_1990"
    t.float    "yield_1991"
    t.float    "yield_1992"
    t.float    "yield_1993"
    t.float    "yield_1994"
    t.float    "yield_1995"
    t.float    "yield_1996"
    t.float    "yield_1997"
    t.float    "yield_1998"
    t.float    "yield_1999"
    t.float    "yield_2000"
    t.float    "yield_2001"
    t.float    "yield_2002"
    t.float    "yield_2003"
    t.float    "yield_2004"
    t.float    "yield_2005"
    t.float    "yield_2006"
    t.float    "yield_2007"
    t.float    "yield_2008"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "nass_yields", ["crop_id", "county_id"], :name => "index_nass_yields_on_crop_id_and_county_id"

  create_table "sales", :force => true do |t|
    t.integer  "client_id"
    t.integer  "crop_id"
    t.float    "bushel_sold"
    t.float    "price"
    t.date     "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sales", ["crop_id", "client_id"], :name => "index_sales_on_crop_id_and_client_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name",      :limit => 25
    t.string   "last_name",       :limit => 50
    t.string   "email",           :limit => 100, :default => "", :null => false
    t.string   "username",        :limit => 25
    t.string   "hashed_password"
    t.string   "salt",            :limit => 40
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "users", ["username"], :name => "index_users_on_username"

end
