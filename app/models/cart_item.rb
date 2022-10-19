class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  
  validates :qty, presence: true, numericality: { greater_than: 0, only_integer: true }
end
