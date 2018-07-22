class ContactsController < ApplicationController

  def new
    @title = 'Contact Us | Bhagwant Export'
    @contact = Contact.new
  end

  def create
    @title = 'Contact Us | Bhagwant Export'
    @contact = Contact.new params[:contact]
    #@contact.message = @contact.message[0..290]
    contact_valid = @contact.valid? ? true : false
    if contact_valid
      @contact.notify
      redirect_to thankyou_path and return
      #send_mail and display thankyou page
    else
      render 'new'
    end
  end

end
