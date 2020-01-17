class Admin::ProdDetailsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @product = Product.find(params[:product_id])
    @prod_detail = ProdDetail.new
  end

  def create
    @product = Product.find(params[:product_id])
    @prod_detail = @product.prod_details.create(prod_detail_params)
    redirect_to admin_aisle_path(@product.aisle)
  end

  private

    def prod_detail_params
      params.require(:prod_detail).permit(:psize, :price, :pship, :qtyonhand)
    end

end

