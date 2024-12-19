class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail(to: @user.email, 
        bcc: "philippe.nougaillon@aikku.eu, pierre-emmanuel.dacquet@aikku.eu, sebastien.pourchaire@aikku.eu",
        subject: "[Aikku SIGN] Bienvenue !'")

  end
end
