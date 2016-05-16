class Users::RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :birth_date)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :surname, :birth_date, :position)
  end

end
