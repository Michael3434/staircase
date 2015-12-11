class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(user)
     edit_user_registration_path(user)
  end

  def after_update_path_for(user)
    root_path
  end

end
