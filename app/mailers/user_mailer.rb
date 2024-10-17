class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail(to: @user.email, 
        bcc: "philippe.nougaillon@gmail.com, pierreemmanuel.dacquet@gmail.com",
        subject: "[Aikku SIGN] Bienvenue !'")

  end
end
