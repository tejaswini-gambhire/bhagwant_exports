
class Notifier < ActionMailer::Base
  def notify_contact(contact)
    @contact = contact
    mail(to: ENV['TEAM'], from: 'gambhire.tejaswini30@gmail.com', reply_to: contact.email, subject: 'Request for information', message: contact.message)
  end
end
