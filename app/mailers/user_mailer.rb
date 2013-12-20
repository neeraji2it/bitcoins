class UserMailer < ActionMailer::Base
  default :from => "projectvalue123@gmail.com"
  
  def contact_us(contact)
    @contact = contact
    mail(:to => "info@maxpropertiesllc.com", :subject => "Contact Details")
  end
  
  def subscribe(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "info")
  end
end
