class Users::RegistrationsController < Devise::RegistrationsController
  # Before actions to set the resource if needed

  private

  # Extend the sign_up parameters to include the role
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end

  # If you have other parameter methods, include them
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :role)
  end
end
