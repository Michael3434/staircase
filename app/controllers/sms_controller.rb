require 'twilio-ruby'


class SmsController < ApplicationController
before_action :set_message, only: [:create]
def new_
end

def create
  # trouve le moyen de recup l'id d'un immeuble
  @building = Building.find(current_user.id_building_to_show)
  @building.users.each do |user|
  twilio(@content, user.phone_number)
  end
  twilio(@content)
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
      to = '#{phone_number} '
      client.account.sms.create(
        :from => from,
        :to => to,
        :body => content
      )
  end

  def set_message
    @content = params[:description]
  end
end
