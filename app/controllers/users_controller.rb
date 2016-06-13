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

  def user_update_parameters
    params.require(:task).permit(:is_done, :title, :project_id)
  end
end
