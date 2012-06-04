class CreateBreakevenCosts < ActiveRecord::Migration
  def up
    create_table :breakeven_costs do |t|
      t.references :farm
      t.references :crop
      t.integer "crop_year"
      t.float "cash_price", :default => 0
      t.float "gov_pay", :default => 0
      t.float "fertilizer", :default => 0
      t.float "pesticide", :default => 0
      t.float "seed", :default => 0
      t.float "drying", :default => 0
      t.float "storage", :default => 0
      t.float "crop_insurance", :default => 0
      t.float "mach_hire_lease", :default => 0
      t.float "utils", :default => 0
      t.float "mach_repair", :default => 0
      t.float "fuel_oil", :default => 0
      t.float "light_vech", :default => 0
      t.float "mach_depreciation", :default => 0
      t.float "hired_labor", :default => 0
      t.float "bldg_rep_rent", :default => 0
      t.float "bldg_depreciation", :default => 0
      t.float "insurance", :default => 0
      t.float "misc", :default => 0
      t.float "interest", :default => 0
      t.float "family_living", :default => 0
      t.float "land_cost_rent", :default => 0
      t.float "exp_custom", :default => 0
      t.float "dir_exp_custom", :default => 0
      t.float "pow_exp_custom", :default => 0
      
      t.timestamps
    end
    add_index("breakeven_costs", "farm_id")
  end
  
  def down
    drop_table :breakeven_costs
  end
end
