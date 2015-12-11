class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.post.subject
  #
  def post(user)
    @user = user

    mail to: "@user.email", subjet: "Bonjour #{user.first_name}"
  end
end
