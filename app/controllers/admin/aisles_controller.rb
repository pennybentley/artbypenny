class Admin::AislesController < ApplicationController

  def new
    @aisle = Aisle.new
  end

  def create
    @aisle = Aisle.create(aisle_params)
    if @aisle.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path(@course)
  end

  def show
    @aisle = Aisle.find(params[:id])
  end

  private

    def aisle_params
      params.require(:adescr)
    end

end


