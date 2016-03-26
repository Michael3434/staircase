class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user
    mail from: "La team StairCaze <michael@ispeakin.com>", to: @user.email, subject: "Bienvenue sur StairCaze !"
  end

end

