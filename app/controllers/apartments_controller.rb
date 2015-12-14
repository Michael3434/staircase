class ApartmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_apartment, only: [:edit,:update, :show, :destroy]

  def index
    if current_user.apartment_users.empty?
      redirect_to new_apartment_path, notice: "You don't have apartment yet :) "
    else
      @apartments = current_user.apartment_users
    end
  end

  def edit
    @buildings = Building.all
  end

  def update
    @building = Building.find(params[:apartment][:building_id])
    @apartment = @building.apartments.update(apartment_params)
    if @apartment.update
      ap_user = current_user.apartment_users.build(apartment: @apartment, status: params[:apartment][:resident_id])
      ap_user.save
      redirect_to apartments_path, notice: "Update..."
    else
      redirect_to new_apartment_path, notice: "Not Update..."
    end
  end

  def new
    if current_user.apartment_users.empty?
      @buildings = Building.all
      @apartment = Apartment.new
    else
      if params[:create] == "yes"
        @buildings = Building.all
        @apartment = Apartment.new
      else
        redirect_to home_path
      end
    end

  end

  def create
    @building = Building.find(params[:apartment][:building_id])
    @apartment = @building.apartments.build(apartment_params)
    if @apartment.save
      ap_user = current_user.apartment_users.build(apartment: @apartment, status: params[:apartment][:resident_id])
      ap_user.save
      current_user.id_building_to_show = @building.id
      current_user.save
      redirect_to home_path, notice: "Saved..."
    else
      redirect_to new_apartment_path, notice: "Not Saved..."
    end

  end

  def destroy
    @apartment.destroy
    redirect_to apartments_path
  end

  private

  def twilio_example(list, content)
  @building = current_user.apartment_user.first.building
  @user = User.all
  @user.each do |user|
    if user.apartment_user.first.building == @building
      account_sid = ENV['TWILIO_SID']
      auth_token = ENV['TWILIO_AUTHTOKEN']
      client = Twilio::REST::Client.new account_sid, auth_token
      from = "+33644607391" # Your Twilio number
      to =   "#{user.phone_number}"
      client.account.messages.create(
        :from => from,
        :to => to,
        :body => "#{content}"
      )
    end
  end
end

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end

  def apartment_params
    params.require(:apartment).permit(:apartment_floor, :apartment_ref, :owner_id, :resident_id)
  end

end
