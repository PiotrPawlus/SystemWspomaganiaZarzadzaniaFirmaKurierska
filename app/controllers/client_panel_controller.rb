class ClientPanelController < ApplicationController
  def index
    @orders = Order.all
    @packages = Package.all
  end
end
