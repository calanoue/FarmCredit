module FarmsHelper
  
  def get_farms()
    #Get farms based on criteria for crop_id and county_id
    @farms = Farm.select("farms.name, counties.name AS county_name, field_name, yr_2009").joins("JOIN counties ON 
    county_id=counties.id JOIN farm_managements ON farms.id=farm_id").where(:client_id => @client.id, :county_id => 57,
    :farm_managements => {:crop_id => 1}).order("farms.name ASC")
    @total_acres = Farm.select("SUM(yr_2009)").joins("JOIN counties ON 
    county_id=counties.id JOIN farm_managements ON farms.id=farm_id").where(:client_id => @client.id, :county_id => 57,
    :farm_managements => {:crop_id => 1, :field_name => "Acres"})
    @total_production = Farm.select("SUM(yr_2009)").joins("JOIN counties ON 
    county_id=counties.id JOIN farm_managements ON farms.id=farm_id").where(:client_id => @client.id, :county_id => 57,
    :farm_managements => {:crop_id => 1, :field_name => "Production"})
  end
  
end
