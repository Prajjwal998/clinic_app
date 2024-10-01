class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  private

 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role, :email, :password, :password_confirmation, :current_password])
  end
end

