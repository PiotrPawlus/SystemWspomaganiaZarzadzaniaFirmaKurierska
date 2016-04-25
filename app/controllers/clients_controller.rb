class ClientsController < ApplicationController
  before_action :authenticate_user!, except: [:change_password, :update_client_password]
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def index
    @clients = Client.all
  end

  def show
    sign_out :client
    render "client_panel/index"
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(:password, :password_confirmation, :current_password)
    }
  end


end
