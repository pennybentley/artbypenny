class Product < ApplicationRecord
  belongs_to :aisle

  validates :pname, presence: true
  validates :pdescr, presence: true
end
