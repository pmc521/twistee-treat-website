class Product < ApplicationRecord
  CATAGORIES = [ "Ice-Cream", "Water Ice", "Candy", "Paper Goods", "Misc"  ]

  validates :name, presence: true
  validates :amount_needed, presence: true
  validates :catagorie, presence: true

end
