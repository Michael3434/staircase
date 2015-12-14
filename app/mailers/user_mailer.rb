class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.post.subject
  #
  def post(user)
    @user = user
     mail(
      subject:"[StairCaze] Bravo #{@user.first_name} !",
      to: @user.email,
      from:'michael@ispeakin.com',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens:'true')
  end
end

