class PackagesController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :edit, :update, :show, :destroy]

  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
    client_id = current_client.id
  end

  def create
    @new_package = Package.new(package_parameters)
    if @new_package.save
      redirect_to(:controller => 'packages', :action=>'index')
    else
      render('new')
    end
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])
    if @package.update_attributes(package_parameters)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def show
    @package = Package.find(params[:id])
  end

  def destroy
    @package = Package.find(params[:id])
  end

  def drop
    package = Package.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def package_parameters
    params.require(:package).permit(:weight, :size_X, :size_Y, :size_Z, :name_of_recipient, :surname_of_recipient,
    :city_delivery, :street_delivery, :house_number_delivery, :local_number_delivery, :postcode_delivery,
    :city_sender, :street_sender, :house_number_sender, :local_number_sender, :postcode_sender, :phone_delivery, :phone_sender, :paid, :cost)
  end
end
