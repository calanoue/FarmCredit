class CreateCoverages < ActiveRecord::Migration
  def up
    create_table :coverages do |t|
      t.float "level"
      
      t.timestamps
    end
  end
  
  def down
    drop_table :coverages
  end
end
