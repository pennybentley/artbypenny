class AislesController < ApplicationController

  def index
    @aisles = Aisle.all
  end

end
