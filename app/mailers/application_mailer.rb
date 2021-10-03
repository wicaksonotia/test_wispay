class ApplicationMailer < ActionMailer::Base
  default from: 'wicaksono.tia@gmail.com'
  layout 'mailer'
  def send_email_user(user)
    @user = user
    mail(
      to: @user.email, 
      subject: "Testing Action Mailer"
      )
  end
end
