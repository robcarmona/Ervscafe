class AccessController < ApplicationController
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  def index
    menu
    render('menu')
  end
  
  def menu
    # display text & links
  end

  def login
    # login form
  end
  
  def attempt_login
    authorized_user = AdminUser.authenticate(params[:username], params[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:email] = authorized_user.email
      flash[:notice] = "You are now logged in."
      redirect_to(:action => "index", :controller =>'pages')
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
    
  end
  
  def logout
    session[:user_id] = nil
    session[:username] = nil
    session[:email] = nil
    flash[:notice] = "You have been logged out."
    redirect_to(:action => "index", :controller =>'pages')

  end


end