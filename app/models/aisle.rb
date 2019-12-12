class Aisle < ApplicationRecord
  has_many :products

  validates :aname, presence: true
  validates :adescr, presence: true
end
