class AislesController < ApplicationController
  validates :aname, presence: true
  validates :adescr, presence: true
end
