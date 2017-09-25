class ContactMailer < ActionMailer::Base
  default from: ENV['EMAIL']

  def notice_email(contact)
    @contact = contact
    mail(to: ENV['EMAIL'], subject: "[#{Settings.site_name}]New contact is coming!!!")
  end
end
