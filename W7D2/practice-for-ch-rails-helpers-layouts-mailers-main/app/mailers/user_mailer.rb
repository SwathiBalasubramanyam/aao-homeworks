class UserMailer < ApplicationMailer

    def welcome_email(user)
        @user = user
        mail(to: user.email, subject: "Welcome to my awesome website!!")

    end

    def remainder_email(user)

    end
end
