class SessionsController < ApplicationController
  skip_before_action :authorize_student!, only: [:new, :create]

  def new
    flash.now.alert = warden.message if warden.message
  end

  def create
    warden.authenticate!
    redirect_to dashboard_url
  end

  def destroy
    warden.logout
    redirect_to root_url, notice: "Logged out!"
  end
end
