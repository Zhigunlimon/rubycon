class ContactMailer < ApplicationMailer

  def contact_request(data)
    @name = data['name']
    @phone = data['phone']
    @email = data['email']
    @message = data['message']

    mail(to: ENV['contact_email'], subject: 'Запрос на контакт!')
  end
end
