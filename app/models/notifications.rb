class Notifications < ActionMailer::Base
  

  def contact(contact)
    subject    'Contact from Website'
    recipients ''
    from       contact.email
    sent_on    Time.now
    body       :contact => contact
  end

  def signup(sent_at = Time.now)
    subject    'Notifications#signup'
    recipients ''
    from       contact.email
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
