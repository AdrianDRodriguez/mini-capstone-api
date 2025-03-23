class Product < ApplicationRecord
  has_many :category_product
  has_many :categories, through: :category_products
end
