class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: @contact.user.email, subject: "新しい投稿をしました！"
  end
end
