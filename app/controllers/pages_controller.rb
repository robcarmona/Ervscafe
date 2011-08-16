class PagesController < ApplicationController  
  def index
    @special = Special.sorted

    # Render index.erb
  end

  def show
    case params[:permalink]
    when "menu"
      @permalink = params[:permalink]
      @title = "Menu"
    when "about"
      @permalink = params[:permalink]
      @title = "About Us"
    when "location"
      @permalink = params[:permalink]
      @title = "Location"
    else
      render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
    end
  end
end