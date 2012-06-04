class CreateCrops < ActiveRecord::Migration
  def up
    create_table :crops do |t|
      t.string "name", :limit => 50
      
      t.timestamps
    end
  end
  
  def down
    drop_table :crops
  end
end
