class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_paramters, if: :devise_controller?

  protected

  def configure_permitted_paramters
    devise_parameter_sanitizer.for(:sign_up) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
  end

  def set_messages_unread
    if current_user
      @message_unread = 0
      @messages = @conversations.each do |conversation|
        conversation.messages.each do |message|
          @message_unread += 1 if message.opened != true && message.user != current_user
        end
      end
    end
  end

  def after_sign_in_path_for(user)
    new_apartment_path
  end
end
