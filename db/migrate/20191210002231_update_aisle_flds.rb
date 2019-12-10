class UpdateAisleFlds < ActiveRecord::Migration[5.2]
  def change
    change_column :aisles, :aisle, :text 
    change_column :aisles, :aname, :text
  end
end
