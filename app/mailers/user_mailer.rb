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
      track_opens:'true')
  end

  def self.post_to_building(user)
    @building = Building.find(user.id_building_to_show)
    @building.users.each do |u|
    post(u).deliver_now
    end
  end
end

