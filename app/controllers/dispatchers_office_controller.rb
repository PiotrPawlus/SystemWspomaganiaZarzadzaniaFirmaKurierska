class DispatchersOfficeController < ApplicationController
  def index
    @dispatchers = DispatcherOffice.all
  end

  def new
    @dispatcher_office = DispatcherOffice.new
  end

  def create
    @dispatcher_office = DispatcherOffice.new(dispatcher_office_parameters)
    if @dispatcher_office.save
      redirect_to(:controller => 'dispatchers_office', :action=>'index')
    else
      render('new')
    end
  end

  def edit
    @dispatcher_office = DispatcherOffice.find(params[:id])
  end

  def update
    @dispatcher_office = DispatcherOffice.find(params[:id])
    if @dispatcher_office.update_attributes(dispatcher_office_parameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def show
    @dispatcher_office = DispatcherOffice.find(params[:id])
  end

  def destroy
    @dispatcher_office = DispatcherOffice.find(params[:id])
  end

  def drop
    warehouse = DispatcherOffice.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def dispatcher_office_parameters
    params.require(:dispatcher_office).permit(:name, :city, :street, :house_number, :local_number, :postcode)
  end

end
