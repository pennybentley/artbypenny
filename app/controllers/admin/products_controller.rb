class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!

  def new
    @aisle = Aisle.find(params[:aisle_id])
    @product = Product.new
  end

  def create
    @aisle = Aisle.find(params[:aisle_id])
    @product = @aisle.products.create(product_params)

    if @aisle.valid?
      redirect_to admin_aisle_path(@aisle)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    session[:return_to] ||= request.referer
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.update_attributes(product_params)
    if @product.valid?
      redirect_back fallback_location: root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to current_path
  end

  private

    def product_params
       params.require(:product).permit(:pname, :pdescr)
    end

end
