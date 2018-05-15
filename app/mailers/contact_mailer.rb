class ContactMailer < ApplicationMailer

  def contact_request(data)
    @name = data['name']
    @phone = data['phone']
    @email = data['email']
    @message = data['message']

    mail(to: 'contact.usacar@rubycon-logistic.com', subject: 'Запрос на контакт!')
  end
end
