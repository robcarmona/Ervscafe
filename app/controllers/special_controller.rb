class SpecialController < ApplicationController
  before_filter :confirm_logged_in
  def index
    list
    render('list')
  end
  
  def list
    @special = Special.sorted
  end

  def new
    @special = Special.new
  end
  
  def create
    @special = Special.new(params[:special])
    if @special.save
      flash[:notice] = 'Special Created.'
      redirect_to(:action => 'list')
    else
      render("new")
    end
  end

  def edit
    @special = Special.find(params[:id])
  end
  
  def update
    @special = Special.find(params[:id])
    if @special.update_attributes(params[:special])
      flash[:notice] = 'Special updated.'
      redirect_to(:action => 'list')
    else
      render("edit")
    end
  end

  def delete
    @special = Special.find(params[:id])
  end

  def destroy
    Special.find(params[:id]).destroy
    flash[:notice] = "Special destroyed."
    redirect_to(:action => 'list')
  end

end