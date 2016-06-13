class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(user_update_parameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def destroy
    @user = User.find(params[:id])
  end

  def drop
    user = User.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def updateAdmin
    user = User.find(params[:id])

    if user.is_admin
      if user.update_attribute(:is_admin, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_admin, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end

  def updateDispatcher
    user = User.find(params[:id])

    if user.is_dispather
      if user.update_attribute(:is_dispather, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_dispather, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end

  def updateCourier
    user = User.find(params[:id])

    if user.is_courier
      if user.update_attribute(:is_courier, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_courier, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end

  def updateWarehouse
    user = User.find(params[:id])

    if user.is_warehouse
      if user.update_attribute(:is_warehouse, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_warehouse, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end

  def user_update_parameters
    params.require(:task).permit(:is_done, :title, :project_id)
  end
end
