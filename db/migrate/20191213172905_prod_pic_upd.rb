class ProdPicUpd < ActiveRecord::Migration[5.2]
  def change
      add_column :prod_pics, :product_id, :integer
  end
end
