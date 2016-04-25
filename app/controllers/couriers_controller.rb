class CouriersController < ApplicationController
  before_action :authenticate_user!

  def index
    @couriers = Courier.all
  end

  def new
    @courier = Courier.new
  end

  def create
    @new_courier = Courier.new(courier_parameters)
    if @new_courier.save
      redirect_to(:controller => 'couriers', :action=>'index')
    else
      render('new')
    end
  end

  def edit
    @courier = Courier.find(params[:id])
  end

  def update
    @courier = Courier.find(params[:id])
    if @courier.update_attributes(courier_parameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def show
    @courier = Courier.find(params[:id])
    # Wyciągnąć wszystkie paczki dla danego klienta
  end

  def destroy
    @courier = Courier.find(params[:id])
  end

  def drop
    courier = Courier.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def courier_parameters
    params.require(:courier).permit(:name, :precinct)
  end

end
