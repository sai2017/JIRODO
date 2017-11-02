class NoticeMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_jiro.subject
  #
  def sendmail_jiro(jiro)
    @jiro = jiro

    mail to: "skth.s.0410@gmail.com",
         subject: '【JIRODO】店舗情報が投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact

    mail to: @contact.email,
    subject:'【JIRODO】お問合わせをいただきました'
  end
end
