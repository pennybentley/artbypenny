class DeleteAisleFlds < ActiveRecord::Migration[5.2]
  def change
    remove_index :aisles, :aname
    remove_column :aisles, :aisle
    remove_column :aisles, :aname
  end
end
