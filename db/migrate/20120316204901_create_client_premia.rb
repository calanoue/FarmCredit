class CreateClientPremia < ActiveRecord::Migration
  def up
    create_table :client_premia do |t|
      t.references :client
      t.references :county
      t.references :crop
      t.integer "crop_year"
      t.integer "coverage_level"
      
      t.timestamps
    end
    add_index :client_premia, [:crop_id, :client_id, :county_id]
  end
  
  def down
    drop_table :client_premia
  end
end
