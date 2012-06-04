class SalesController < ApplicationController

  layout 'admin'
  
  before_filter :confirm_logged_in
  before_filter :find_client
  
  def index
    list
    render('list')
  end
  
  def list
    @sales = Sale.where(:crop_id => params[:crop_id], :client_id => @client.id)
    @crop = Crop.where(:id => params[:crop_id])[0]
  end
  
  def new
    @sale = Sale.new(:client_id => @client.id, :crop_id => params[:crop_id])
    @crop = Crop.where(:id => params[:crop_id])[0]
  end
  
  def create
    @sale = Sale.new(params[:sale])
    if @sale.save
      flash[:notice] = "Sale created."
      redirect_to(:action => 'list', :client_id => @sale.client_id, :crop_id => @sale.crop_id)
    else
      @sale_count = @client.sales.size + 1
      render('new')
    end
  end
  
  def edit
    @sale = Sale.find(params[:id])
    @sale_count = Sale.count
    @crop = Crop.where(:id => @sale.crop_id)[0]
  end
  
  def update
    @sale = Sale.find(params[:id])
    if @sale.update_attributes(params[:id])
      flash[:notice] = "Sale updated."
      redirect_to(:action => 'show', :id => @sale.id)
    else
      @sale_count = Sale.count
      render('edit')
    end
  end
  
  def delete
    @sale = Sale.find(params[:id])
  end
  
  def destroy
    sale = Sale.find(params[:id])
    sale.destroy
    flash[:notice] = "Sale removed."
    redirect_to(:action => 'list')
  end
  
  private
  
  def find_client
    if params[:client_id]
      @client = Client.find_by_id(params[:client_id])
    end
  end

end
