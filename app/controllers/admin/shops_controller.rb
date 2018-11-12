class Admin::ShopsController < ApplicationController
   before_action :set_shop, only: [:show, :edit, :update, :destroy]
  layout 'layout_admin'
  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true)
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def edit
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to admin_shops_path, flash: { success: 'Shop added successfully.' }
    else
      render :new
    end
  end

  def update
    if @shop.update(shop_params)
      redirect_to admin_shops_path, flash: { success: 'Shop updated successfully.' }
    else
      render :edit
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    if @shop and @shop.destroy
      redirect_to admin_shops_path, flash: { success: 'Shop was deleted successfully!' }
    else
      redirect_to admin_shops_path, flash: { error: 'No user found!' }
    end
  end

  private

    def shop_params
      params.require(:shop).permit!
    end

    def set_shop
      @shop = Shop.find(params[:id])
    end

end