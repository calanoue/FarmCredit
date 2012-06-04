class CreateSales < ActiveRecord::Migration
  def up
    create_table :sales do |t|
      t.references :client
      t.references :crop
      t.float "bushel_sold"
      t.float "price"
      t.date "date"
      
      t.timestamps
    end
    add_index :sales, [:crop_id, :client_id]
  end
  
  def down
    drop_table :sales
  end
end
