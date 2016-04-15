class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
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
    params.require(:package).permit(:weight, :size_X, :size_Y, :size_Z, :delivery_address, :sender_address, :actual_place, :phone, :cost)
  end
end
