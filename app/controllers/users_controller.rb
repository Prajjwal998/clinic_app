class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User created successfully.'
    else
      render :new
    end
  end

  def logout
    sign_out(current_user) # Log out the current user
    redirect_to root_path, notice: 'Successfully logged out.' # Redirect after logout
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role) # Permit role
  end

end
