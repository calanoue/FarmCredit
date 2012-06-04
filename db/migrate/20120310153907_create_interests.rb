class CreateInterests < ActiveRecord::Migration
  def up
    create_table :interests do |t|
      t.integer "level"
      t.timestamps
    end
  end
  
  def down
    drop_table :interests
  end
end
