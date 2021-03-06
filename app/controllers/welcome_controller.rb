class WelcomeController < ApplicationController

  def index
    @email = Email.new
  end

  def create
    if @email = Email.create(email_params)
      redirect_to root_path, notice: "We'll be in touch."
    end
  end

  private
  def email_params
    params.require(:email).permit(:email)
  end
end
