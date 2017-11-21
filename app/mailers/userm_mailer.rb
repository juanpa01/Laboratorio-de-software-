class UsermMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.userm_mailer.notify.subject
  #
  def notify(user)
    @user = user

    mail to: @user.email, subject: "Bienvenido!"
  end
end
