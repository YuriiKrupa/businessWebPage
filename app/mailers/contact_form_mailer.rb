class ContactFormMailer < ApplicationMailer

  default from: 'businessWebPage@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_form_mailer.contact_form_recieved.subject
  #
  def contact_form_recieved(contact)
    @contact = contact

    mail to: contact.email, subject: "New contact application recieved"
  end
end
