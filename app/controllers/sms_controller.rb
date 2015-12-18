require 'twilio-ruby'


class SmsController < ApplicationController
before_action :set_message, only: [:create]
def new_
end

def create
  # trouve le moyen de recup l'id d'un immeub
  # @building = Building.find(current_user.id_building_to_show)
  # @building.users.each do |user|
  phone_number = ["+33 6 46 46 21 44", "+33 6 61 11 67 44"]
  # phone_number = ["+33 7 61 21 75 87", "+33 6 46 46 21 44", "+33 6 61 11 67 44", "+32 479 24 03 94", "+34 6 00 21 55 70", "+33 6 61 11 67 44", "+506 83126020", "+32 485 84 52 80",  "+32 489 69 74 37","+32 477 32 70 33","+90 53 55 01 55 40","+34 606 839 444","+31 6 46 69 05 07","+6 14 24 11 89 37", "+32 489 69 74 37","+32 477 32 70 33","+90 53 55 01 55 40","+34 606 839 444", "+31 6 46 69 05 07", "+6 14 24 11 89 37", "+32 476 785 764","+32 486 899 652","+32 498 08 11 99","+32 477 44 38 40","+32 486 10 63 92","+32 479 61 12 49", "+32 473 184 680"]
  phone_number.each do |phone_number|
  twilio(@content, phone_number)
  end
  redirect_to root_path
end

  private

  def twilio(content, phone_number)
  # @building = current_user.apartment_user.first.building
  # @user = User.all
  # @user.each do |user|
  #   if user.apartment_user.first.building == @building
      account_sid = ENV['TWILIO_SID']
      auth_token = ENV['TWILIO_AUTHTOKEN']
      client = Twilio::REST::Client.new account_sid, auth_token
      from = "+33644607391" # Your Twilio number
      # to =   "+33646462144"
      to = phone_number
      client.account.messages.create(
        :from => from,
        :to => to,
        :body => content
      )
  end

  def set_message
    @content = params[:body]
  end
end
