class ApartmentsController < ApplicationController

  def create

  end

  def new

  @buildings = []
     Building.all.each do |building|
      @buildings << building.name
    end
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)

    if @apartment.save
      @buidling = Building.where(address: params[:apartment][:building_id])
      @apartment.building_id = @buidling.first.id
      @apartment.save
      redirect_to root_path, notice: "Saved..."
    else
      redirect_to new_apartment_path, notice: "Not Saved..."
    end

  end

  private

  def apartment_params
    params.require(:apartment).permit(:partment_floor, :apartment_ref, :owner_id, :resident_id)
  end

end
