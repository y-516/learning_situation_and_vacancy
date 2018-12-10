class ApplicationController < ActionController::Base
  require "date"
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only:[:top]
  helper_method :positioncolumn_change_number_to_string

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image])
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  def positioncolumn_change_number_to_string(number)
    if number == 0
      return "一般"
    else
      return "リーダー"
    end
  end

end
