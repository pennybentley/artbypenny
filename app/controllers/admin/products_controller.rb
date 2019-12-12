class Admin::ProductsController < ApplicationController

  def new
    @aisle = Aisle.find(params[:aisle_id])
    @product = Product.new
  end

  def create
    @aisle = Aisle.find(params[:aisle_id])
    @product = @aisle.products.create(product_params)
    redirect_to admin_aisle_path(@aisle)
  end

  private

    def product_params
      params.require(:product).permit(:aname, :adescr)
    end

end
