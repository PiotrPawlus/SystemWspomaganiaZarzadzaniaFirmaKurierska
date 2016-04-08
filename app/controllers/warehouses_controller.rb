class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @new_warehouse = Warehouse.new(warehouse_parameters)
    if @new_warehouse.save
      redirect_to(:controller => 'warehouses', :action=>'index')
    else
      flash[:notice] = "Niepoprawnie wypełnione pola"
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destory
  end

  def warehouse_parameters
    params.require(:warehouse).permit(:name, :address, :capacity)
  end
end
