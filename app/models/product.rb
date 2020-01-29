class Product < ApplicationRecord
  belongs_to :aisle
  has_many :prod_pics, dependent: :destroy


  validates :pname, presence: true
  validates :pdescr, presence: true
end
