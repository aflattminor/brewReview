class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session
  before_action :initialize_session

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_photo, :profile_photo_cache, :remove_profile_photo])
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("You must be an admin!")
    end
  end

  def authenticate_user
    if !user_signed_in?
      raise ActionController::RoutingError.new("You must be signed in!")
    end
  end

  def initialize_session
    session["init"] = true
  end
end
