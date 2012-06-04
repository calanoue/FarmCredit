class CreateNassYields < ActiveRecord::Migration
  def up
    create_table :nass_yields do |t|
      t.references :county
      t.references :crop
      t.float "yield_1972"
      t.float "yield_1973"
      t.float "yield_1974"
      t.float "yield_1975"
      t.float "yield_1976"
      t.float "yield_1977"
      t.float "yield_1978"
      t.float "yield_1979"
      t.float "yield_1980"
      t.float "yield_1981"
      t.float "yield_1982"
      t.float "yield_1983"
      t.float "yield_1984"
      t.float "yield_1985"
      t.float "yield_1986"
      t.float "yield_1987"
      t.float "yield_1988"
      t.float "yield_1989"
      t.float "yield_1990"
      t.float "yield_1991"
      t.float "yield_1992"
      t.float "yield_1993"
      t.float "yield_1994"
      t.float "yield_1995"
      t.float "yield_1996"
      t.float "yield_1997"
      t.float "yield_1998"
      t.float "yield_1999"
      t.float "yield_2000"
      t.float "yield_2001"
      t.float "yield_2002"
      t.float "yield_2003"
      t.float "yield_2004"
      t.float "yield_2005"
      t.float "yield_2006"
      t.float "yield_2007"
      t.float "yield_2008"
      
      t.timestamps
    end
    add_index :nass_yields, [:crop_id, :county_id]
  end
  
  def down
    drop_table :nass_yields
  end
end
