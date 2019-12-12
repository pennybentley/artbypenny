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

  private

    def product_params
       params.require(:product).permit(:aname, :adescr)
    end

end
