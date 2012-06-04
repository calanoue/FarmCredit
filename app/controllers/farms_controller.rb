class FarmsController < ApplicationController
  
  layout 'admin'
  
  before_filter :confirm_logged_in
  before_filter :find_client
  
  def index
    list
    render('list')
  end
  
  def list
    @farms = Farm.where(:client_id => @client.id)
  end
  
  def new
    @farm = Farm.new(:client_id => @client.id)
    @crop_years = [2009, 2010, 2011]
    @interest_levels = Interest.all.map { |i| [i.level] }
  end
  
  def edit
    @farm = Farm.find(params[:id])
    @farm_insurance = FarmInsurance.where(:farm_id => @farm.id, :crop_year => @crop_year)[0]
    @crop_years = [2009, 2010, 2011]
    @interest_levels = Interest.all.map { |i| [i.level] }
  end
  
  def update
    @farm = Farm.find(params[:id])
    if @farm.update_attributes(params[:id])
      flash[:notice] = "Farm updated."
      redirect_to(:action => 'show', :id => @farm.id)
    else
      @farm_count = Farm.count
      render('edit')
    end
  end
  
  def delete
    @farm = Farm.find(params[:id])
  end
  
  def destroy
    farm = Farm.find(params[:id])
    farm.destroy
    flash[:notice] = "Farm removed."
    redirect_to(:action => 'list')
  end
  
  def review
    #@client.id
    @crops = Crop.all
    @counties = Farm.select("distinct county_id, counties.name AS county_name").joins("JOIN counties ON county_id=counties.id").where(:client_id => @client.id)
    @counties.all.each do |county|
      County.find(county.county_id)
    end
  end
  
  private
  
  def find_client
    if params[:client_id]
      @client = Client.find_by_id(params[:client_id])
    end
  end
  
end
