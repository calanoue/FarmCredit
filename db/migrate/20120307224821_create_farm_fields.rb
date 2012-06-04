class CreateFarmFields < ActiveRecord::Migration
  def up
    create_table :farm_fields do |t|
      t.string "name"
      
      t.timestamps
    end
  end
  
  def down
    drop_table :farm_fields
  end
end
