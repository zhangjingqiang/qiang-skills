class ContactMailer < ActionMailer::Base
  default from: 'from@example.com'

  def notice_email(contact)
    @contact = contact
    mail(to: ENV['EMAIL'], subject: '[Qiang Skills]New contact is coming!!!')
  end
end
