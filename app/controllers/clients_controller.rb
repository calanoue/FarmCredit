class ClientsController < ApplicationController
  
  layout 'admin'
  
  before_filter :confirm_logged_in
  
  def index
    list
    render('list')
  end
  
  def list
    @clients = Client.order("clients.name ASC")
    @crop_years = [2009, 2010, 2011]
  end
  
  def new
    @client = Client.new
    @client_count = Client.count + 1
  end
  
  def create
    @client = Client.new(params[:client])
    # Save the object
    if @client.save
      flash[:notice] = "Client created."
      redirect_to(:action => 'index')
    else
      @client_count = Client.count + 1
      render('new')
    end
  end
  
  def edit
    @client = Client.find(params[:id])
    @client_count = Client.count
  end
  
  def update
    # Find object using form parameters
    @client = Client.find(params[:id])
    # Update the object
    if @client.update_attributes(params[:id])
      # If update succeeds, redirect to the list action
      flash[:notice] = "Client updated."
      redirect_to(:action => 'show', :id => @client.id)
    else
      # If save fails, redisplay the form so user can fix problems
      @client_count = Client.count
      render('edit')
    end
  end
  
  def delete
    @client = Client.find(params[:id])
  end
  
  def destroy
    client = Client.find(params[:id])
    client.destroy
    flash[:notice] = "Client removed."
    redirect_to(:action => 'list')
  end
end
