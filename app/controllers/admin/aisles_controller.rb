class Admin::AislesController < ApplicationController
  before_action :authenticate_user!

  def new
    @aisle = Aisle.new
  end

  def create
    @aisle = current_user.aisles.create(aisle_params)
    redirect_to admin_aisle_path(@aisle)
  end

  def show
    @aisle = Aisle.find(params[:id])
  end

  private

  def aisle_params
    params.permit(:adescr)
  end

end
