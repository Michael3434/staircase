module ApplicationHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    if user.image
      user.image
    else
    "https://s.gravatar.com/avatar/#{gravatar_id}?s=150"
    end
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def generate_button
    ["Plombier", "Electricien", "Coupure d'eau", "Coupure d'électricité"]
  end
end
