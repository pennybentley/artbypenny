class ProdPic < ApplicationRecord
  belongs_to :product

  validates :ptext, presence: true
end
