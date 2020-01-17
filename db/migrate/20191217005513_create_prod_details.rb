class CreateProdDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :prod_details do |t|
      t.string  :psize
      t.string  :pcolor
      t.decimal :price
      t.string  :pship
      t.integer :qtyonhand
      t.timestamps
    end
  end
end
