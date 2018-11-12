class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  layout 'layout_admin'
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, flash: { success: 'User added successfully.' }
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path, flash: { success: 'User updated successfully.' }
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user and @user.destroy
      redirect_to admin_users_path, flash: { success: 'User was deleted successfully!' }
    else
      redirect_to admin_users_path, flash: { error: 'No user found!' }
    end
  end

  private

    def user_params
      params.require(:user).permit!
    end

    def set_user
      @user = User.find(params[:id])
    end

  end
