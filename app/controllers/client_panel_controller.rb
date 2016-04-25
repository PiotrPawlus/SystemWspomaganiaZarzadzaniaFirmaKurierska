class ClientPanelController < ApplicationController
  before_action :authenticate_client!
  def index
    @orders = Order.all
    @packages = Package.all
  end
end
