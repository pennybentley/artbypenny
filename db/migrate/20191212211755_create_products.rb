class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :pname
      t.text :pdescr
      t.integer :aisle_id
      t.timestamps
    end
    add_index :products, :pname
  end
end
