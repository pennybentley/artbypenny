class DropAisle < ActiveRecord::Migration[5.2]
  def change
    drop_table :aisles
  end
end
