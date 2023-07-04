class UserMailer < ApplicationMailer
    default from: '99CatAdmin <99catsadmin@appacademy.io>'

    def welcome_email(user)
        @user = user
        @url = 'http://localhost:3000/session/new'
        mail(to: @user.username, subject: 'Welcome to the 99 Cats Site!')
    end
end
