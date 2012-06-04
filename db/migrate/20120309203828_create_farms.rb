class CreateFarms < ActiveRecord::Migration
  def up
    create_table :farms do |t|
      t.references :client
      t.references :county
      t.string "name"
      
      t.timestamps
    end
    add_index :farms, [:client_id, :county_id]
  end
  
  def down
    drop_table :farms
  end
end
