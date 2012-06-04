class CreateFarmInsurances < ActiveRecord::Migration
  def up
    create_table :farm_insurances do |t|
      t.references :farm
      t.integer "crop_year"
      t.float "corn_aph"
      t.float "corn_acre"
      t.float "corn_interest"
      t.float "soybean_aph"
      t.float "soybean_acre"
      t.float "soybean_interest"
      t.boolean "added_land", :default => false
      
      t.timestamps
    end
    add_index("farm_insurances", "farm_id")
  end
  
  def down
    drop_table :farm_insurances
  end
end
