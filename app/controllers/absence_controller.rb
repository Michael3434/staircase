class AbsenceController < ApplicationController
before_action :be_connected!
before_action :is_pm

@users = []
  def people_absent
    @users = []
    User.all.each do |user|
      user.apartment_users.each do |apartment|
        if apartment.apartment.building_id == current_user.id_building_to_show
          @users << apartment.user if apartment.user != current_user
        end
      end
    end
  end

  def is_pm
    if current_user.is_pm.nil?
      redirect_to home_path, notice: "You don't have the permission :) "
    end
  end

  private

  def be_connected!
    redirect_to root_path if !user_signed_in?
  end
end
