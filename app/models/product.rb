class Product < ActiveRecord::Base
  has_many :orders
  has_many :product_options
end
