class NewAisle < ActiveRecord::Migration[5.2]
  def change
    create_table :aisles do |t|
      t.string :aname
      t.text :adescr
      t.timestamps
    end
  end
end
