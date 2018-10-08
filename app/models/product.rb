class Product < ApplicationRecord
  has_many :photos
  monetize :price_cents
end
