class CreateFarmManagements < ActiveRecord::Migration
  def up
    create_table :farm_managements do |t|
      t.references :farm
      t.references :crop
      t.string "field_name"
      t.float "yr_1972"
      t.float "yr_1973"
      t.float "yr_1974"
      t.float "yr_1975"
      t.float "yr_1976"
      t.float "yr_1977"
      t.float "yr_1978"
      t.float "yr_1979"
      t.float "yr_1980"
      t.float "yr_1981"
      t.float "yr_1982"
      t.float "yr_1983" 
      t.float "yr_1984"
      t.float "yr_1985"
      t.float "yr_1986"
      t.float "yr_1987"
      t.float "yr_1988"
      t.float "yr_1989"
      t.float "yr_1990"
      t.float "yr_1991"
      t.float "yr_1992"
      t.float "yr_1993"
      t.float "yr_1994"
      t.float "yr_1995"
      t.float "yr_1996"
      t.float "yr_1997"
      t.float "yr_1998"
      t.float "yr_1999"
      t.float "yr_2000"
      t.float "yr_2001"
      t.float "yr_2002"
      t.float "yr_2003"
      t.float "yr_2004"
      t.float "yr_2005"
      t.float "yr_2006"
      t.float "yr_2007"
      t.float "yr_2008"
      t.float "yr_2009"

      t.timestamps
    end
    add_index :farm_managements, [:crop_id, :farm_id]
  end
  
  def down
    drop_table :farm_managements
  end
  
end
