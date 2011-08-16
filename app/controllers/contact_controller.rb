class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      Notifications.deliver_contact(@contact)
      flash[:notice] = "Your message was sent."
      redirect_to new_contact_path
    else
      flash[:error] = "Sorry, there was a problem! Please fill in all the boxes, then try again."
      render :new
    end
  end

end
