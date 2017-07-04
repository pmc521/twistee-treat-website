class Inventory < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :amount, presence: true
  validates :number, presence: true
  validates :user_id, presence: true
  validates :product_id, presence: true
end
