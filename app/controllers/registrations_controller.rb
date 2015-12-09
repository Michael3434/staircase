class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(user)
     edit_user_registration_path(user)
  end

end
