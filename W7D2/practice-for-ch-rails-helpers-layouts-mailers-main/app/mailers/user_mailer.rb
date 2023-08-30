class UserMailer < ApplicationMailer

    def welcome_email(user)
        @user = user
        mail(to: user.username, subject: "Welcome to my awesome website!!")

    end

    def remainder_email(user)

    end
end
