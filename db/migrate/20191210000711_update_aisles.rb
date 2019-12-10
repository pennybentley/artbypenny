class UpdateAisles < ActiveRecord::Migration[5.2]
  def change
    add_column :aisles, :aisle, :string
  end
end
