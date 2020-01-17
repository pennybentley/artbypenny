class ProdDetsKey < ActiveRecord::Migration[5.2]
  def change
    add_column :prod_details, :product_id, :integer
  end
end
