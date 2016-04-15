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
  end

  def update
  end

  def show
  end

  def destroy
  end

  def package_parameters
    params.require(:package).permit(:weight, :size_X, :size_Y, :size_Z, :delivery_address, :sender_address, :actual_place, :phone, :cost)
  end
end
