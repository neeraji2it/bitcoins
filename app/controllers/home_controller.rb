class HomeController < ApplicationController
  
  def subscribe
    @contact = Contact.new
    render :layout => false
  end
  
  def contact
    @contact = Contact.new
  end
  
  def contact_us
    @contact = Contact.new(contact_params)
    if @contact.save
      UserMailer.contact_us(@contact).deliver
      UserMailer.subscribe(@contact).deliver
      respond_to do |format|
        format.js
      end
    end
  end
 
  
  private
    def contact_params
      params.require(:contact).permit(:first_name,:last_name,:email,:country,:phone_number)
    end
end
