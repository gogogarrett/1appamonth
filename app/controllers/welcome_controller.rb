class WelcomeController < ApplicationController

  def index
    @email = Email.new
  end

  def create
    if @email = Email.create(email_params)
      redirect_to root_path, notice: "Grats!"
    end
  end

  private
  def email_params
    params.require(:email).permit(:email)
  end
end
