class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { in: 1..7 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 5, less_than_or_equal_to: 25 }
  validates :description, presence: true
  validates :description, length: { in: 1..35 }
end
