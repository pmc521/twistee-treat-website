class Price < ApplicationRecord
  validates :catagorie, presence: true
  validates :price, presence: true


end
