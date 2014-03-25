class MyProfileController < ApplicationController

  def update
    flash[:notice] = 'Profile was successfully updated' if current_user.update(user_params)
    respond_with resource, location: my_profile_path
  end

  private
  def resource
    @user = current_user
  end
  helper_method :resource

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
