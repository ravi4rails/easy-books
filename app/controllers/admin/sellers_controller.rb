class Admin::SellersController < ApplicationController
  before_action :set_seller, only: [:show, :edit, :update, :destroy]
  layout 'layout_admin'
  def index
    @q = Seller.ransack(params[:q])
    @sellers = @q.result(distinct: true)
  end

  def show
  end

  def new
    @seller = Seller.new
  end

  def edit
  end

  def create
    @seller = Seller.new(seller_params)
    if @seller.save
      redirect_to admin_sellers_path, flash: { success: 'Seller added successfully.' }
    else
      render :new
    end
  end

  def update
    if @seller.update(seller_params)
      redirect_to admin_sellers_path, flash: { success: 'Seller updated successfully.' }
    else
      render :edit
    end
  end

  def destroy
    @seller = Seller.find(params[:id])
    if @seller and @seller.destroy
      redirect_to admin_sellers_path, flash: { success: 'Seller was deleted successfully!' }
    else
      redirect_to admin_sellers_path, flash: { error: 'No user found!' }
    end
  end

  private

    def seller_params
      params.require(:seller).permit!
    end

    def set_seller
      @seller = Seller.find(params[:id])
    end

  end
