class AbsenceController < ApplicationController


@users = []
  def people_absent
    @users = []
    User.all.each do |user|
      user.apartment_users.each do |apartment|
        if apartment.apartment.building_id == current_user.id_building_to_show
          @users << apartment.user
        end
      end
    end
  end
end
