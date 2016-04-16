class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @new_order = Order.new(order_parameters)
    if @new_order.save
      redirect_to(:controller => 'orders', action => 'index')
    else
      render('new')
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(order_parameters)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
  end

  def drop
    order = Order.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def order_parameters
    params.require(:order).permit(:status)
  end
  
end
