class ApartmentsController < ApplicationController

  def index
    if current_user.apartment_users.empty?
      redirect_to new_apartment_path, notice: "You don't have apartment yet :) "
    else
      @apartments = current_user.apartment_users
    end
  end

  def new
    if current_user.apartment_users.empty?
      @buildings = Building.all
      @apartment = Apartment.new
    else
      redirect_to home_path
    end

  end

  def create
    @building = Building.find(params[:apartment][:building_id])
    @apartment = @building.apartments.build(apartment_params)
    if @apartment.save
      ap_user = current_user.apartment_users.build(apartment: @apartment, status: params[:apartment][:resident_id])
      ap_user.save
      redirect_to home_path, notice: "Saved..."
    else
      redirect_to new_apartment_path, notice: "Not Saved..."
    end

  end

  private

  def apartment_params
    params.require(:apartment).permit(:apartment_floor, :apartment_ref, :owner_id, :resident_id)
  end

end
