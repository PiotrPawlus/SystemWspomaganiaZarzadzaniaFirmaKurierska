class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    sign_out :client
    render "client_panel/index"
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    client = Client.find(parmas[:id])
    if client.update_attributes(client_update_parameters)
      redirect_to(:controller => clients, :action => index)
    else
      render('edit')
    end
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(:password, :password_confirmation, :current_password)
    }
  end

  def client_update_parameters
    params.require(:task).permit(:email, :name, :surname, :phone)
  end

end
