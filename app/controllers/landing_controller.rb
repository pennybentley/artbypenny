class LandingController < ApplicationController

  def index 
    @aisles = Aisle.all 
  end 
  
end
