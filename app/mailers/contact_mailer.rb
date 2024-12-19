class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail(to: 'sebastien.pourchaire@aikku.eu',
         cc: 'philippe.nougaillon@aikku.eu, pierre-emmanuel.dacquet@aikku.eu',
         subject: '[Aikku SIGN] Nouveau contact')
  end
end