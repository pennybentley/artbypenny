class ProdPicsController < ApplicationController

  def index
    @prod_pics = Prod_pic.all
  end

end
