class PostMailer < ApplicationMailer
    def send_email_user(user, product)
        @user = user
        @product = product
        mail(
        to: @user.email, 
        subject: "Testing Action Mailer"
        )
    end
end
