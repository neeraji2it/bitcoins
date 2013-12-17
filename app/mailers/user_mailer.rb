class UserMailer < ActionMailer::Base
  default :from => "projectvalue123@gmail.com"
  
  def contact_us(contact)
    @contact = contact
    mail(:to => "info@MaxPropertiesLLC.com", :subject => "Contact Details")
  end
end
