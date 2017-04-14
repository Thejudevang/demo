class NotificationMailer < ApplicationMailer

	default from: 'notifications@example.com'
 
  def welcome_email(mailer)
    @mailer = mailer
    mail(from: 'sowmyadevang@gmail.com', to: 'thejudevang@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
