class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @new_user = User.new(user_parameters)
    if @new_user.save
      redirect_to(:controller => 'users', :action=>'index')
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_parameters)
      redirect_to(:action => 'index')
    else
      render('edit')
    end 
  end

  def show
  end

  def destroy
  end

  def user_parameters
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :birth_date, :position)
  end
end
