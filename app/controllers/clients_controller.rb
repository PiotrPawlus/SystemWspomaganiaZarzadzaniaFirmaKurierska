class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @new_client = Client.new(client_parameters)
    if @new_client.save
      redirect_to(:controller => 'clients', :action=>'index')
    else
      render('new')
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_parameters)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def destroy
    @client = Client.find(params[:id])
  end

  def drop
    client = Client.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def client_parameters
    params.require(:client).permit(:email, :password, :password_confirmation, :name, :surname, :phone)
  end
end
