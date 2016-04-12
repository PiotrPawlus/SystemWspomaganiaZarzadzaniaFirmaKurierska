class CouriersController < ApplicationController
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
  end

  def courier_parameters
    params.require(:courier).permit(:precinct)
  end

end
