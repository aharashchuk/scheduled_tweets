class PasswordMailer < ApplicationMailer

  def reset
    @token = params[:user].signed_id(expires_in: 15.minutes, purpose: "password_reset")

    mail to: params[:user].email, subject: "Password Reset"

  end
end