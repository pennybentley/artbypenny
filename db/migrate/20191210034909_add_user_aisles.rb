class AddUserAisles < ActiveRecord::Migration[5.2]
  def change
    add_column :aisles, :user_id, :integer
  end
end
