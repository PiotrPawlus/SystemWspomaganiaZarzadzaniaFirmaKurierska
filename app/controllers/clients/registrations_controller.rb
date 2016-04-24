class Clients::RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:client).permit(:email, :password, :password_confirmation, :name, :surname, :phone)
  end

  def account_update_params
    params.require(:client).permit(:email, :password, :password_confirmation, :current_password, :name, :surname, :phone)
  end

end
