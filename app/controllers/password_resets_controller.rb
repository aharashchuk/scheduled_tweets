class PasswordResetsController < ApplicationController
  def new
  end


  def create
    @user = User.find_by_email(params[:email])

    if @user.present?
      # send email
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    
    redirect_to root_path, :notice => "Email sent with password reset instructions."
  end
end

# Path: app\models\user