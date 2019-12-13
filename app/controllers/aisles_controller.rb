class AislesController < ApplicationController

  def index
    @aisles = Aisle.all
  end

  def show
    @aisle = Aisle.find(params[:id])
  end

end
