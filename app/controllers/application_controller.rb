class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permit_parameters, if: :devise_controller?

  protected

  def configure_permit_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :direccion, :telefono])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :direccion, :telefono])
  end

end
