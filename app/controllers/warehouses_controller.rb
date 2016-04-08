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
      render('new')
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Warehouse.find(params[:id])
    if @warehouse.update_attributes(warehouse_parameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def show
    @warehouse = Warehouse.find(params[:id])
    # Wyciągnąć wszystkie zamówienia dla warehouse_id
    # W widoku wyciągnąć wszystkie paczki dla danego magazynu
  end

  def destory
    @warehouse = Warehouse.find(params[:id])
  end

  def drop
    warehouse = Warehouse.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def warehouse_parameters
    params.require(:warehouse).permit(:name, :city, :street, :house_number, :local_number, :postcode, :capacity)
  end
end
