class CreateClients < ActiveRecord::Migration
  def up
    create_table :clients do |t|
      t.references :user
      t.string "name"
      
      t.timestamps
    end
    add_index("clients", "user_id")
  end
  
  def down
    drop_table :clients
  end
end
