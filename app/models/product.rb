class Product < ApplicationRecord
  has_one :cart_item, dependent: :destroy
  
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0, only_integer: true }
end
