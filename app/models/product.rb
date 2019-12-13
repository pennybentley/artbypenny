class Product < ApplicationRecord
  belongs_to :aisle
  has_many :prod_pics

  validates :pname, presence: true
  validates :pdescr, presence: true
end
