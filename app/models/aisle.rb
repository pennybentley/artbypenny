class Aisle < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :aname, presence: true
  validates :adescr, presence: true
end
