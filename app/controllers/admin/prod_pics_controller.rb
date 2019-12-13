class Admin::ProdPicsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])
    @prod_pic = ProdPic.new
  end

  def create
    @product = Product.find(params[:product_id])
    @prod_pic = @product.prod_pics.create(prod_pic_params)
    redirect_to admin_aisle_path(@product.aisle)
  end

  private

    def prod_pic_params
      params.require(:prod_pic).permit(:ptext, :image)
    end

end
