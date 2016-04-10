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
      redirect_to(:controller => 'couriers', :action => index)
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

  def courier_parameters
    params.require(:courier).permit(:precinct)
  end

end
