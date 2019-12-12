class AislesController < ApplicationController

  def index
    @aisles = Aisle.all
  end

  def create
    @aisle = current_user.aisles.create(aisle_params)
    if @aisle.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @aisle = Aisle.find(params[:id])
  end

  private

  def aisle_params
    params.require(:aname).permit(:adescr)
  end

end
