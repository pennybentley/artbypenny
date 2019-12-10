class UpdateAisleIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :aisles, :aname
  end
end
