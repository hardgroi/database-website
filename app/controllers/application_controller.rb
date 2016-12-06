class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # User permitted params
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:email, :first_name, :last_name, :address]
    )
    devise_parameter_sanitizer.permit(:account_update,
      keys: [:email, :first_name, :last_name, :address]
    )
  end

end
