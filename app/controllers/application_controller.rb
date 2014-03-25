class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorize_student!

  def authorize_student!
    unauthorized! unless current_user
  end

  def unauthorized!(path = root_path, message = "Unauthorized")
    redirect_to path, alert: message
  end

  def current_user
    warden.user
  end
  helper_method :current_user

  def warden
    env['warden']
  end
end
