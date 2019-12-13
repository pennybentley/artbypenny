class ProdPicAddImage < ActiveRecord::Migration[5.2]
  def change
    add_column :prod_pics, :image, :string
  end
end
