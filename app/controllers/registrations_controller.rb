class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(user)
     new_apartment_path
  end

  def after_update_path_for(user)
    home_path
  end

end
