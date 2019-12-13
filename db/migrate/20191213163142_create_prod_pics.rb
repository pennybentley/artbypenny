class CreateProdPics < ActiveRecord::Migration[5.2]
  def change
    create_table :prod_pics do |t|
      t.string :ptext
      t.timestamps
    end
  end
end
