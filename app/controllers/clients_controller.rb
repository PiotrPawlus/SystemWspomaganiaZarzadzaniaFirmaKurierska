class ClientsController < ApplicationController
  before_action :authenticate_user!

  def index
    @clients = Client.all
  end

  def show
    sign_out :client
    render "client_panel/index"
  end

end
