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

  def edit
    session[:return_to] ||= request.referer
    @product = Product.find(params[:id])
    @prod_pic = @product.prod_pics.create(prod_pic_params)
  end

  def update
    @product = Product.find(params[:id])
    @prod_pic = @product.prod_pics.create(prod_pic_params)
    @product.update_attributes(product_params)
    if @product.valid?
      redirect_to session.delete(:return_to)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @prod_pic = ProdPic.find(params[:product_id])
    @prod_pic.destroy
    redirect_back fallback_location: root_path
  end

  private

    def prod_pic_params
      params.require(:prod_pic).permit(:ptext, :image)
    end

end
