class CreateCounties < ActiveRecord::Migration
  def up
    create_table :counties do |t|
      t.references :state
      t.string "name"
      
      t.timestamps
    end
    add_index("counties", "state_id")
  end
  
  def down
    drop_table :counties
  end
end
