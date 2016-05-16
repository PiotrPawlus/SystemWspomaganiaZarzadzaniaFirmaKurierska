class OrdersController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :edit, :update, :show]



  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    continueLoop = true

    while continueLoop do
      continueLoop = false
      generateOrderNumber = rand(1e15...1e16).to_i
    	$orderNumber = generateOrderNumber.to_s
      if $orderNumber.length == 16
        Order.all.each do |temp|
          if temp.order_number == $orderNumber
            continueLoop = true
          end
        end
      end
    end

  end

  def create
    @order = Order.new(order_number: $orderNumber)
    @order.update_attributes(order_parameters)
    if @order.save
      if client_signed_in?
        @order.update_attributes(:client_id => current_client.id)
        redirect_to(:controller => 'packages', :action => 'new')
      else
        redirect_to(:controller => 'orders', :action => 'index')
      end
    else
      render('new')
    end
  end

  def edit
    @order = Order.find(params[:id])
    $orderNumber = @order.order_number
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

  private
  def order_parameters
    params.require(:order).permit(:status)
  end

end
